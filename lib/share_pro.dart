import 'package:share_pro/share_result.dart';
import 'share_pro_platform_interface.dart';

class SharePro {
  Future<String?> getPlatformVersion() {
    return ShareProPlatform.instance.getPlatformVersion();
  }

  Future<ShareResult> share(String message) {
    return ShareProPlatform.instance.share(message);
  }
} 