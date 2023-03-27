import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:provider/provider.dart';

import 'package:shimmer_effect/repo/network_api.dart';
import 'package:shimmer_effect/screens/circular_progress_screen.dart';
import 'package:shimmer_effect/screens/cp_background_screen.dart';
import 'package:shimmer_effect/screens/custom_painter_screen.dart';
import 'package:shimmer_effect/screens/internet_checker_screen.dart';
import 'package:shimmer_effect/screens/location_screen.dart';
import 'package:shimmer_effect/screens/product_screen.dart';
import 'package:shimmer_effect/screens/rive_animation.dart';
import 'package:shimmer_effect/screens/speech_to_text.dart';
import 'package:shimmer_effect/screens/wave_custom_painter_screen.dart';

import 'background_rive_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool autoPlay = false;
  bool autoPlay1 = false;

  @override
  Widget build(BuildContext context) {
    var productModel = Provider.of<NetworkApi>(context).getProduct();
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
          Colors.blue.withOpacity(0.4),
          Colors.green.withOpacity(0.5),
          Colors.deepPurple.withOpacity(0.6),
        ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ShakeWidget(
              shakeConstant: ShakeChunkConstant(),
              autoPlay: autoPlay,
              child: ElevatedButton.icon(
                  onLongPress: () {
                    setState(() {
                      autoPlay = !autoPlay;
                    });
                  },
                  onPressed: () {
                    // log(productModel.toString(), name: "product model");

                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const ProductScreen(),
                        ));
                  },
                  icon: const Icon(Icons.done),
                  label: const Text("Shimmer")),
            ),
            ShakeWidget(
              shakeConstant: ShakeLittleConstant2(),
              autoPlay: autoPlay1,
              child: ElevatedButton.icon(
                  onLongPress: () {
                    setState(() {
                      autoPlay1 = !autoPlay1;
                    });
                  },
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const CustomPainterScreen(),
                        ));
                    // log(productModel.toString(), name: "product model");
                  },
                  icon: const Icon(Icons.draw),
                  label: const Text("Custom painter")),
            ),
            ElevatedButton.icon(
                onLongPress: () {
                  setState(() {
                    autoPlay1 = !autoPlay1;
                  });
                },
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CpBackgroundScreen(),
                      ));
                  // log(productModel.toString(), name: "product model");
                },
                icon: const Icon(Icons.piano),
                label: const Text("Custom painter Background")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const WaveCustomPainterScreen(),
                      ));
                },
                child: const Text("Wave Custom Painter")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CircularProgressScreen(),
                      ));
                },
                child: const Text("Animated Circular Progress")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const SpeechTpTextScreen(),
                      ));
                },
                child: const Text("Speech to text")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const RiveAnimationScreen(),
                      ));
                },
                child: const Text("Rive Animation")),
            ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const BackgroundRiveScreen(),
                      ));
                },
                child: const Text("Rive Animation- Background")),
            // ElevatedButton(
            //   child: const Text("Request permission"),
            //   onPressed: () async {
            //     final perm = await html.window.navigator.permissions
            //         ?.query({"name": "camera"});
            //     if (perm?.state == "denied") {
            //       // Scaffold.of(context).
            //       ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
            //         content: Text("Oops! Camera access denied!"),
            //         backgroundColor: Colors.orangeAccent,
            //       ));
            //       return;
            //     }
            //     final stream =
            //         await html.window.navigator.getUserMedia(video: true);
            //     // ...
            //   },
            // ),
            ElevatedButton(
              child: const Text("Internet Checker"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const InternetCheckerScreen(),
                    ));
              },
            ),
            ElevatedButton(
              child: const Text("Location"),
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const LocationScreen(),
                    ));
              },
            ),
          ],
        ),
      ),
    );
  }
}
