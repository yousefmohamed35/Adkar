import 'package:flutter/material.dart';

class QuranView extends StatelessWidget {
  const QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('مصحف كريم')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Text(
            'بسم الله الرحمن الرحيم\n'
            'الحمد لله رب العالمين\n'
            'الرحمن الرحيم\n'
            'مالك يوم الدين\n',
            style: const TextStyle(
              fontFamily: 'UthmanicHafs',
              fontSize: 26,
              height: 2,
            ),
            textAlign: TextAlign.justify,
          ),
        ),
      ),
    );
  }
}
