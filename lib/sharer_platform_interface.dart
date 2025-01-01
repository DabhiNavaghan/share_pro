import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:sharer/share_result.dart';

import 'sharer_method_channel.dart';

abstract class SharerPlatform extends PlatformInterface {
  /// Constructs a SharerPlatform.
  SharerPlatform() : super(token: _token);

  static final Object _token = Object();

  static SharerPlatform _instance = MethodChannelSharer();

  /// The default instance of [SharerPlatform] to use.
  ///
  /// Defaults to [MethodChannelSharer].
  static SharerPlatform get instance => _instance;

  /// Platform-specific implementations should set this with their own
  /// platform-specific class that extends [SharerPlatform] when
  /// they register themselves.
  static set instance(SharerPlatform instance) {
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
