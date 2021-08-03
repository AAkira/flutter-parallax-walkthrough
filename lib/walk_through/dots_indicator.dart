import 'dart:math';

import 'package:flutter/material.dart';

class DotsIndicator extends StatelessWidget {
  const DotsIndicator({
    Key? key,
    required this.dotsCount,
    required this.position,
    this.dotColor = Colors.black45,
    this.activeDotColor = Colors.white,
    this.dotSize = const Size.square(8),
    this.activeDotSize = const Size.square(12),
    this.dotSpacing = const EdgeInsets.all(6.0),
  })  : assert(dotsCount > 0),
        assert(position >= 0),
        assert(position < dotsCount),
        super(key: key);

  final int dotsCount;
  final double position;

  final Color dotColor;
  final Color activeDotColor;
  final Size dotSize;
  final Size activeDotSize;
  final EdgeInsets dotSpacing;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: List<Widget>.generate(dotsCount, _dot),
    );
  }

  Widget _dot(int index) {
    final state = min(1.0, (position - index).abs());

    final size = Size.lerp(activeDotSize, dotSize, state);
    final color = Color.lerp(activeDotColor, dotColor, state);
    final shape = ShapeBorder.lerp(
      const CircleBorder(),
      const CircleBorder(),
      state,
    );

    return Container(
      width: size!.width,
      height: size.height,
      margin: dotSpacing,
      decoration: ShapeDecoration(
        color: color,
        shape: shape!,
      ),
    );
  }
}
