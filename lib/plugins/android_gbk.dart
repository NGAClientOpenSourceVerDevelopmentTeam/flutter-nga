import 'package:flutter/services.dart';

class AndroidGbk {
  static const _gbkChannel =
      const MethodChannel('xyz.loshine.flutternga.gbk/plugin');

  static Future<String> decode(List<int> bytes) async {
    return await _gbkChannel.invokeMethod('decode', {"bytes": bytes});
  }
}
