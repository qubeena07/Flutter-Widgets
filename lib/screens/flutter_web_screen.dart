import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/body_widget.dart';

class FlutterWebScreen extends StatelessWidget {
  const FlutterWebScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: const [NavigationBarWidget(), BodyContent()],
      ),
    );
  }
}

class NavigationBarWidget extends StatelessWidget {
  const NavigationBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              colors: [Colors.grey, Colors.black54, Colors.white])),
      height: 100,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                height: 230,
                width: 150,
                child: Image.asset("assets/peach.png", fit: BoxFit.contain)),
            // const SizedBox(
            //   width: 250,
            // ),
            const Text(
              "WELCOME TO NEW HOME",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.white,
                  fontSize: 30),
            ),
            const Text(
              "Logout",
              style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.black,
                  fontSize: 15),
            )
          ],
        ),
      ),
    );
  }
}

class BodyContent extends StatelessWidget {
  const BodyContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // height: double.infinity,
      decoration: const BoxDecoration(
          gradient: LinearGradient(colors: [
        Colors.blue,
        Colors.indigoAccent,
        Colors.cyanAccent,
        Colors.purpleAccent
      ])),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            BodyWidget(
              text: "Beautiful Beach",
              imageName: "assets/beach.jpeg",
            ),
            BodyWidget(
              text: "Cute Dog",
              imageName: "assets/dog.jpeg",
            ),
            BodyWidget(
              text: "You're the Sunflower",
              imageName: "assets/sunflower.jpeg",
            ),
            BodyWidget(
              text: "IfellForYou ",
              imageName: "assets/tour.jpeg",
            ),
          ],
        ),
      ),
    );
  }
}
