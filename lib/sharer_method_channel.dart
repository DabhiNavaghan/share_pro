import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:share_pro/share_result.dart';

import 'sharer_platform_interface.dart';

/// An implementation of [SharerPlatform] that uses method channels.
class MethodChannelSharePro extends SharerPlatform {
  /// The method channel used to interact with the native platform.
  @visibleForTesting
  final methodChannel = const MethodChannel('share_pro');

  @override
  Future<String?> getPlatformVersion() async {
    final version = await methodChannel.invokeMethod<String>('getPlatformVersion');
    return version;
  }

  @override
  Future<ShareResult> share(String message) async {
    final status = await methodChannel.invokeMethod<String>('share', {
      'message': message,
    });
    return ShareResult.fromString(status);
  }
}
