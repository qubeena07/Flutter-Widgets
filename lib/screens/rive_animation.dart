import 'package:flutter/material.dart';
import 'package:rive/rive.dart' as rive;

class RiveAnimationScreen extends StatefulWidget {
  const RiveAnimationScreen({super.key});

  @override
  State<RiveAnimationScreen> createState() => _RiveAnimationScreenState();
}

class _RiveAnimationScreenState extends State<RiveAnimationScreen> {
  late rive.RiveAnimationController _controller;
  void _togglePlay() =>
      setState(() => _controller.isActive = !_controller.isActive);

  bool get isPlaying => _controller.isActive;

  @override
  void initState() {
    _controller = rive.SimpleAnimation("idle");
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.pinkAccent, Colors.pink],
              end: Alignment.topLeft,
              begin: Alignment.bottomRight)),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Center(
            child: rive.RiveAnimation.network(
          "https://cdn.rive.app/animations/vehicles.riv",
          fit: BoxFit.contain,
          controllers: [_controller],
          onInit: (_) => setState(() {}),
        )),
        floatingActionButton: FloatingActionButton(
          onPressed: _togglePlay,
          tooltip: isPlaying ? "Pause" : "Play",
          child: Icon(isPlaying ? Icons.pause : Icons.play_arrow),
        ),
      ),
    );
  }
}
