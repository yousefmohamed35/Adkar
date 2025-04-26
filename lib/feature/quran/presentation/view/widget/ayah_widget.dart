import 'package:flutter/material.dart';

class AyahWidget extends StatelessWidget {
  final String text;
  final int verseNumber;

  const AyahWidget({super.key, required this.text, required this.verseNumber});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: RichText(
        text: TextSpan(
          style: const TextStyle(
            fontSize: 26, // حجم الآية أكبر شوية
            fontFamily: 'UthmanicHafs', // الخط العثماني
            color: Colors.black,
            height: 2.2, // تباعد بين السطور أكثر راحة
          ),
          children: [
            TextSpan(text: text),
            WidgetSpan(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Container(
                  padding: const EdgeInsets.all(6),
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.green.shade100,
                    border: Border.all(
                      color: Colors.green.shade800,
                      width: 1.5,
                    ),
                  ),
                  child: Text(
                    verseNumber.toString(),
                    style: const TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                      fontFamily: 'UthmanicHafs',
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        textAlign: TextAlign.justify,
      ),
    );
  }
}
