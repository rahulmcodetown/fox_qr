import 'package:flutter/material.dart';

class DashedBorderPainter extends CustomPainter {
  final Paint _paint;

  DashedBorderPainter(Color color)
      : _paint = Paint()
          ..color = color
          ..strokeWidth = 1.0
          ..style = PaintingStyle.stroke
          ..strokeCap = StrokeCap.round
          ..strokeJoin = StrokeJoin.round
          ..isAntiAlias = true
          ..shader = null
          ..blendMode = BlendMode.srcOver;

  @override
  void paint(Canvas canvas, Size size) {
    final dashWidth = 5.0;
    final dashSpace = 5.0;
    double startY = 0.0;
    while (startY < size.height) {
      canvas.drawLine(Offset(0.0, startY), Offset(size.width, startY), _paint);
      startY += dashWidth + dashSpace;
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}

class DashedBorderContainer extends StatelessWidget {
  final Widget child;
  final Color color;

  DashedBorderContainer({required this.child, required this.color});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: DashedBorderPainter(color),
      child: Container(
        child: child,
      ),
    );
  }
}
