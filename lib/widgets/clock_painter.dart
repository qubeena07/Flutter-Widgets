import 'dart:math';

import 'package:flutter/material.dart';

class ClockPainter extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    double centerX = size.width / 2;
    double centerY = size.height / 2;
    double radius = min(centerX, centerY);
    Offset center = Offset(centerX, centerY);
    double outerRadius = radius - 20;
    double innerRadius = radius - 30;
    Paint secLinePaint = Paint()
      ..color = Colors.red
      ..strokeWidth = 4
      ..strokeCap = StrokeCap.round;

    Offset secEndOffset = Offset(centerX - outerRadius * cos(0 * pi / 180),
        centerX - outerRadius * sin(0 * pi / 180));

    canvas.drawLine(center, const Offset(140, 350), secLinePaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
