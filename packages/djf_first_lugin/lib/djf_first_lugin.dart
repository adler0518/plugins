import 'dart:async';

import 'package:flutter/services.dart';
import 'package:flutter/foundation.dart';

class DjfFirstLugin {
  static const MethodChannel _channel = const MethodChannel('djf_first_lugin');

  /// Returns a  string for phone system version.
  ///
  /// Properties get
  ///
  static Future<String> get platformVersion async {
    final String version = await _channel.invokeMethod('getPlatformVersion');
    return version;
  }

  ///Returns a  string, append [surname] param conteng
  ///
  /// The [surname] argument string.
  /// Is a method.
  ///
  static Future<String> name({
    @required String surname,
  }) async {
    final String name = await _channel.invokeMethod(
      'getName',
      <String, dynamic>{
        'surname': surname,
      },
    );

    return name;
  }
}
