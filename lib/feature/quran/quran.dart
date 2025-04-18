import 'dart:convert';
import 'dart:developer';

import 'package:flutter/material.dart';

class QuranView extends StatefulWidget {
  const QuranView({super.key});

  @override
  State<QuranView> createState() => _QuranViewState();
}

class _QuranViewState extends State<QuranView> {
  List<dynamic>? jsonData;
  Future<void> loadQuran() async {
    var result = await DefaultAssetBundle.of(
      context,
    ).loadString('assets/quran.json');
    final data = jsonDecode(result);
    setState(() {
      jsonData = data;
    });
  }

  @override
  void initState() {
    // TODO: implement initState
    loadQuran();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
          jsonData == null
              ? CircularProgressIndicator()
              : ListView.builder(
                itemCount: jsonData!.length,
                itemBuilder: (context, index) {
                  return Text('${jsonData![index]['name']}');
                },
              ),
    );
  }
}
