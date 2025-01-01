import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:share_pro/share_result.dart';
import 'package:share_pro/sharer_method_channel.dart';
 
abstract class ShareProPlatform extends PlatformInterface {
  ShareProPlatform() : super(token: _token);

  static final Object _token = Object();
  static MethodChannelSharePro _instance = MethodChannelSharePro();

  static MethodChannelSharePro get instance => _instance;

  static set instance(MethodChannelSharePro instance) {
    PlatformInterface.verifyToken(instance, _token);
    _instance = instance;
  }

  Future<String?> getPlatformVersion() {
    throw UnimplementedError('platformVersion() has not been implemented.');
  }

  Future<ShareResult> share(String message) {
    throw UnimplementedError('share() has not been implemented.');
  }
} 