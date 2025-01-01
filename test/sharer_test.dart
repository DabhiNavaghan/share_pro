import 'package:flutter_test/flutter_test.dart'; 
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:share_pro/share_result.dart';
import 'package:share_pro/sharer.dart';
import 'package:share_pro/sharer_method_channel.dart';
import 'package:share_pro/sharer_platform_interface.dart';

class MockSharerPlatform
    with MockPlatformInterfaceMixin
    implements SharerPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
 
  @override
  Future<ShareResult> share(String message) => Future.value(ShareResult.shared);
}

void main() {
  final SharerPlatform initialPlatform = SharerPlatform.instance;

  test('$MethodChannelSharePro is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSharePro>());
  });

  test('getPlatformVersion', () async {
    Sharer sharerPlugin = Sharer();
    MockSharerPlatform fakePlatform = MockSharerPlatform();
    SharerPlatform.instance = fakePlatform;

    expect(await sharerPlugin.getPlatformVersion(), '42');
  });
}
