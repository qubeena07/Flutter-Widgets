import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_shake_animated/flutter_shake_animated.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_effect/repo/demo_screen.dart';

import 'package:shimmer_effect/repo/network_api.dart';
import 'package:shimmer_effect/screens/animated_text_screen.dart';
import 'package:shimmer_effect/screens/bluetooth_screen.dart';
import 'package:shimmer_effect/screens/charts_screen.dart';
import 'package:shimmer_effect/screens/circular_progress_screen.dart';
import 'package:shimmer_effect/screens/clock_screen.dart';
import 'package:shimmer_effect/screens/cp_background_screen.dart';
import 'package:shimmer_effect/screens/custom_painter_screen.dart';
import 'package:shimmer_effect/screens/drawing_screen.dart';
import 'package:shimmer_effect/screens/flutter_web_screen.dart';
import 'package:shimmer_effect/screens/hero_screen.dart';
import 'package:shimmer_effect/screens/in_app_update_screen.dart';
import 'package:shimmer_effect/screens/internet_checker_screen.dart';
import 'package:shimmer_effect/screens/ios_home_screen.dart';
import 'package:shimmer_effect/screens/lazy_loading_screen.dart';
import 'package:shimmer_effect/screens/list_view_animation_screen.dart';
import 'package:shimmer_effect/screens/location_screen.dart';
import 'package:shimmer_effect/screens/location_tracking_screen.dart';
import 'package:shimmer_effect/screens/product_screen.dart';
import 'package:shimmer_effect/screens/rive_animation.dart';
import 'package:shimmer_effect/screens/rotation_animation_screen.dart';
import 'package:shimmer_effect/screens/speech_to_text.dart';
import 'package:shimmer_effect/screens/wave_custom_painter_screen.dart';
import 'package:shimmer_effect/widgets/download_button.dart';

import 'background_rive_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  bool autoPlay = false;
  bool autoPlay1 = false;

  _onExit() {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        content: const Text('Are you sure you want to exit the app?'),
        actions: [
          TextButton(
              onPressed: () {
                exit(0);
              },
              child: const Text('YES')),
          TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: const Text('NO')),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var productModel = Provider.of<NetworkApi>(context).getProduct();
    return WillPopScope(
      onWillPop: () => _onExit(),
      child: SafeArea(
        child: Scaffold(
          body: Container(
            height: double.infinity,
            width: double.infinity,
            decoration: BoxDecoration(
                gradient: LinearGradient(colors: [
              Colors.blue.withOpacity(0.4),
              Colors.green.withOpacity(0.5),
              Colors.deepPurple.withOpacity(0.6),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight)),
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                // child: RefreshIndicator(
                //   color: Colors.green,
                //   onRefresh: () async {
                //     await Future.delayed(const Duration(seconds: 10));
                //   },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                                  builder: (context) =>
                                      const CustomPainterScreen(),
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
                                builder: (context) =>
                                    const CpBackgroundScreen(),
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
                                builder: (context) =>
                                    const WaveCustomPainterScreen(),
                              ));
                        },
                        child: const Text("Wave Custom Painter")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const CircularProgressScreen(),
                              ));
                        },
                        child: const Text("Animated Circular Progress")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const SpeechTpTextScreen(),
                              ));
                        },
                        child: const Text("Speech to text")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const RiveAnimationScreen(),
                              ));
                        },
                        child: const Text("Rive Animation")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    const BackgroundRiveScreen(),
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
                              builder: (context) =>
                                  const InternetCheckerScreen(),
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
                    ElevatedButton(
                      child: const Text("Animated Text Kit"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const AnimatedTextScreen(),
                            ));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Live Location Tracking"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) =>
                                  const LocationTrackingScreen(),
                            ));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Demo Screen"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const DemoScreen(),
                            ));
                      },
                    ),
                    ElevatedButton(
                      child: const Text("Flutter Web"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const FlutterWebScreen(),
                            ));
                      },
                    ),

                    Hero(
                        tag: "DemoTag",
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => const HeroScreen(),
                                ));
                          },
                          child: const Icon(
                            Icons.add,
                            size: 40,
                          ),
                        )),
                    ElevatedButton(
                      child: const Text("Lazy loading"),
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => const LazyLoadingScreen(),
                            ));
                      },
                    ),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ChartScreen()));
                        },
                        child: const Text("Flutter charts")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const InAppUpdateScreen()));
                        },
                        child: const Text("In App Update")),

                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ListViewAnimationScreen()));
                        },
                        child: const Text("List View Animaton")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RotationAnimationScreen()));
                        },
                        child: const Text("Rotate Animaton")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const DrawingScreen()));
                        },
                        child: const Text("Drawing")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const ExampleCupertinoDownloadButton()));
                        },
                        child: const Text("Download button")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const IosHomeScreen()));
                        },
                        child: const Text("Ios Design")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => BluetoothScreen()));
                        },
                        child: const Text("Bluetooth Printer")),
                    ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const ClockScreen()));
                        },
                        child: const Text("Clock Screen")),
                  ],
                  // ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
