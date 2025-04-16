import 'package:flutter/material.dart';

import '../../../../../core/convert_to_arabic.dart';
import 'custom_button.dart';

class AnimatedCounter extends StatefulWidget {
  final int count;

  const AnimatedCounter({super.key, required this.count});

  @override
  State<AnimatedCounter> createState() => _AnimatedCounterState();
}

class _AnimatedCounterState extends State<AnimatedCounter>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller;
  late final Animation<double> _animation;

  @override
  void initState() {
    super.initState();

    _controller = AnimationController(
      vsync: this,
      duration: Duration(milliseconds: 150),
      lowerBound: 1.0,
      upperBound: 1.2,
    );

    _animation = _controller;
  }

  @override
  void didUpdateWidget(covariant AnimatedCounter oldWidget) {
    super.didUpdateWidget(oldWidget);

    if (oldWidget.count != widget.count) {
      _controller.forward().then((_) => _controller.reverse());
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ScaleTransition(
      scale: _animation,
      child: CustomButton(
        text: convertToArabicNumbers(widget.count.toString()),
        width: 120,
        hight: 110,
        size: 28,
      ),
    );
  }
}
