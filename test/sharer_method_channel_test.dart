import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:share_pro/sharer_method_channel.dart';
 
void main() {
  TestWidgetsFlutterBinding.ensureInitialized();

  MethodChannelSharePro platform = MethodChannelSharePro();
  const MethodChannel channel = MethodChannel('share_pro');

  setUp(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(
      channel,
      (MethodCall methodCall) async {
        return '42';
      },
    );
  });

  tearDown(() {
    TestDefaultBinaryMessengerBinding.instance.defaultBinaryMessenger.setMockMethodCallHandler(channel, null);
  });

  test('getPlatformVersion', () async {
    expect(await platform.getPlatformVersion(), '42');
  });
}
