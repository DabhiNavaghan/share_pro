 
import 'package:share_pro/share_result.dart';

import 'sharer_platform_interface.dart';

class Sharer {
  Future<String?> getPlatformVersion() {
    return SharerPlatform.instance.getPlatformVersion();
  }

  Future<ShareResult> share(String message) {
    return SharerPlatform.instance.share(message);
  }
}
