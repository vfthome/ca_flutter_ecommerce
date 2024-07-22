import 'dart:math';

import 'package:flutter/material.dart';

/// Rotates child widget by [degreesOfRotation].
class RotateChild extends StatelessWidget {
  const RotateChild({
    super.key,
    required this.degreesOfRotation,
    required this.child,
  });

  final double degreesOfRotation;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Transform(
      alignment: FractionalOffset.center,
      transform: Matrix4.rotationZ(2 * pi * (degreesOfRotation / 360)),
      child: child,
    );
  }
}
