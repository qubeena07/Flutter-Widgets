import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/person_info.dart';

class HeaderWidget extends StatelessWidget {
  HeaderWidget({super.key, required this.isMain});
  bool isMain = true;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        isMain
            ? CircleImage(
                urlImage:
                    "https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80",
                radius: 26,
              )
            : IconButton(
                onPressed: () {}, icon: Icon(Icons.adaptive.arrow_back)),
        const SizedBox(
          width: 10,
        ),
        const Text(
          "BRYAN SIMONIS",
          style: TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.legend_toggle_outlined,
              size: 30,
            ))
      ],
    );
  }
}
