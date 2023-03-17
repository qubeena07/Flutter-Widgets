import 'package:flutter/material.dart';

import 'package:shimmer_effect/widgets/circular_progress_ring.dart';

class CircularProgressScreen extends StatefulWidget {
  const CircularProgressScreen({super.key});

  @override
  State<CircularProgressScreen> createState() => _CircularProgressScreenState();
}

class _CircularProgressScreenState extends State<CircularProgressScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: CircularProgressRing(
            linearGradientFirstColor: Colors.orange,
            linearGradientSecondColor: Colors.orange,
            progress: 90),
      ),
    );
  }
}
