import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:fox/shared/utils/utils.dart';

class PremiumPathClipper extends CustomClipper<Path> {
  final int length;

  PremiumPathClipper({required this.length});

  @override
  ui.Path getClip(ui.Size size) {
    final path = Path();

    final width = size.width - 270.w + length * 10;
    final height = size.height;

    final widthOffset = width * 0.1;

    path.lineTo(width - widthOffset, 0);

    path.quadraticBezierTo(width, height * 0.5, width - widthOffset, height);

    path.lineTo(0, height);

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<ui.Path> oldClipper) {
    return true;
  }
}
