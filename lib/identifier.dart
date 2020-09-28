import 'dart:async';

import 'package:flutter/services.dart';

class Identifier {
  static const MethodChannel _channel = const MethodChannel('identifier');

  static Future<String> get uniqueIdentifier async {
    final String version = await _channel.invokeMethod('getUniqueIdentifier');
    return version;
  }
}
