
import 'dart:async';

import 'package:flutter/services.dart';

class BsFlutterCard {
  static const MethodChannel _channel =
      const MethodChannel('bs_flutter_card');

  static Future<String?> get platformVersion async {
    final String? version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }
}
