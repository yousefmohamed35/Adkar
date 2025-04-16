import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomContainer extends StatelessWidget {
  const CustomContainer({super.key, required this.text});
  final String text;
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      height: 100,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 12, 90, 100),
        borderRadius: BorderRadius.circular(20),
      ),
      child: CustomText(text: text),
    );
  }
}
