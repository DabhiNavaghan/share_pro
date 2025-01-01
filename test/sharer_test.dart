import 'package:flutter_test/flutter_test.dart';
import 'package:sharer/share_result.dart';
import 'package:sharer/sharer.dart';
import 'package:sharer/sharer_platform_interface.dart';
import 'package:sharer/sharer_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

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

  test('$MethodChannelSharer is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelSharer>());
  });

  test('getPlatformVersion', () async {
    Sharer sharerPlugin = Sharer();
    MockSharerPlatform fakePlatform = MockSharerPlatform();
    SharerPlatform.instance = fakePlatform;

    expect(await sharerPlugin.getPlatformVersion(), '42');
  });
}
