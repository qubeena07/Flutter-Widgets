import 'dart:math';

import 'package:flutter/material.dart';

class DemoScreen extends StatefulWidget {
  const DemoScreen({super.key});

  @override
  State<DemoScreen> createState() => _DemoScreenState();
}

class _DemoScreenState extends State<DemoScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomPaint(
        painter: PaintCircle(),
        child: Container(),
      ),
    );
  }
}

class PaintCircle extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    var paint = Paint()
      ..color = Colors.brown
      ..strokeWidth = 5
      ..shader = const LinearGradient(colors: [Colors.red, Colors.yellow])
          .createShader(Offset(0, size.height) & size)
      ..style = PaintingStyle.fill;

    // ..strokeCap = StrokeCap.round;

    var height = size.height;
    var width = size.width;

    var p1 = const Offset(0, 0);
    // var p2 = const Offset(50, 100);
    var p2 = Offset(width, height);

    var center = Offset(width / 2, height / 2);
    double radius = 180.0;

    var rect = Rect.fromCenter(center: center, width: width, height: width);

    var path = Path();
    // path.moveTo(width/2, height/2); //kaha bata suru garne

    // canvas.drawLine(p1, p2, paint);
    // canvas.drawCircle(center, radius, paint);

    // Offset center = Offset(size.width / 2, size.height / 2);

    // canvas.drawCircle(center, 100, paint);

    // canvas.drawArc(rect, 0, (90 * pi) / 180, true, paint);

    // path.lineTo(0, height); // kaha samma draw garne
    // path.quadraticBezierTo(200, 200, width, 0);

    // path.moveTo(0, height);
    // path.quadraticBezierTo(width / 2, height / 2, width, height);

    // path.c

    canvas.drawCircle(center, radius, paint);
    var center3 = const Offset(200, 550);
    var mouthRect = Rect.fromCircle(center: center3, radius: radius - 70);

    canvas.drawArc(
        mouthRect,
        (210 * pi) / 180,
        (120 * pi) / 180,
        false,
        paint = Paint()
          ..color = Colors.white
          ..strokeWidth = 5
          ..style = PaintingStyle.stroke);
    double radius1 = 25.0;
    var center1 = const Offset(140, 350);

    canvas.drawCircle(
        center1,
        radius1,
        Paint()
          ..color = Colors.blue
          ..strokeWidth = 5
          ..style = PaintingStyle.fill);
    double radius2 = 25.0;
    var center2 = const Offset(250, 350);

    canvas.drawCircle(
        center2,
        radius2,
        Paint()
          ..color = Colors.green
          ..strokeWidth = 5
          ..style = PaintingStyle.fill);

//

    // canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
