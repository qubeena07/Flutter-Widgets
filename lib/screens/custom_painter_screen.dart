import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/circle_painter.dart';
import 'package:shimmer_effect/widgets/shape_painter.dart';

class CustomPainterScreen extends StatelessWidget {
  const CustomPainterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Custom Painter"),
        ),
        body: CustomPaint(
          painter: ShapePainter(),
          foregroundPainter: CirclePainter(),
          child: Container(),
        ));
  }
}
