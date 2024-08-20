import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class AssetsHelper {
  Future<List<dynamic>> parseListFromJson({required String path}) async {
    final jsonString = await rootBundle.loadString(path);
    return jsonDecode(jsonString);
  }
}
