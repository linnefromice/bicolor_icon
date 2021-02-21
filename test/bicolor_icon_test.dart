import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:bicolor_icon/bicolor_icon.dart';

void main() {
  const MethodChannel channel = MethodChannel('bicolor_icon');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(await BicolorIcon.platformVersion, '42');
  });
}
