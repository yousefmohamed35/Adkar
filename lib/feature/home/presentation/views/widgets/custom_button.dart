import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.text, this.width, this.hight});
  final String text;
  final double? width;
  final double? hight;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.deepPurple,
        shape: CircleBorder(),
        fixedSize: Size(width ?? 100, hight ?? 90),
      ),
      onPressed: () {},
      child: CustomText(text: text),
    );
  }
}
