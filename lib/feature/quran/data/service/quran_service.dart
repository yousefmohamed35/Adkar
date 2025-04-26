import 'dart:convert';
import 'package:flutter/services.dart';

import '../models/quran_model/quran_model.dart';
// adjust path

class QuranService {
  Future<List<QuranModel>> loadQuran() async {
    final result = await rootBundle.loadString('assets/quran.json');
    final List<dynamic> data = jsonDecode(result);
    return data.map((e) => QuranModel.fromJson(e as Map<String, dynamic>)).toList();
  }
}
