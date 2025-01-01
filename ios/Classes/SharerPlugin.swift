import Flutter
import UIKit

public class SharerPlugin: NSObject, FlutterPlugin {
  public static func register(with registrar: FlutterPluginRegistrar) {
    let channel = FlutterMethodChannel(name: "sharer", binaryMessenger: registrar.messenger())
    let instance = SharerPlugin()
    registrar.addMethodCallDelegate(instance, channel: channel)
  }

  public func handle(_ call: FlutterMethodCall, result: @escaping FlutterResult) {
    switch call.method {
    case "getPlatformVersion":
      result("iOS " + UIDevice.current.systemVersion)
    case "share":
      guard let args = call.arguments as? [String: Any],
            let message = args["message"] as? String else {
        result(FlutterError(code: "INVALID_ARGUMENT", message: "Message is missing", details: nil))
        return
    }
    presentShareSheet(message: message, result: result)
    default:
      result(FlutterMethodNotImplemented)
    }
  }
}
