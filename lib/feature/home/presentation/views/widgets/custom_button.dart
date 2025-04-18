import 'package:flutter/material.dart';

import 'custom_text.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.text,
    this.width,
    this.hight,
    this.onPressed,
    this.color,
    this.size,
  });
  final String text;
  final double? width;
  final double? hight;
  final void Function()? onPressed;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        backgroundColor: color ?? Colors.deepPurple,
        shape: CircleBorder(),
        fixedSize: Size(width ?? 100, hight ?? 90),
      ),
      onPressed: onPressed,
      child: CustomText(text: text, size: size),
    );
  }
}
