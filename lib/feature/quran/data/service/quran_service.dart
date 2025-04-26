import 'dart:convert';

import 'package:flutter/services.dart';

Future<List<dynamic>> loadQuran() async {
  var result = await rootBundle.loadString("assets/quran.json");
  final data = jsonDecode(result);
  return data;
}
