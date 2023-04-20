import 'package:flutter/material.dart';

class BarColumn extends StatelessWidget {
  BarColumn(
      {super.key, required this.height, this.color, required this.monthText});
  double height;
  Color? color;
  String monthText;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15.5),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: 45,
            height: height,
            decoration: BoxDecoration(
                color: height >= 150
                    ? const Color.fromARGB(255, 219, 134, 109)
                    : const Color.fromARGB(255, 185, 185, 185),
                borderRadius: BorderRadius.circular(8)),
          ),
          const SizedBox(
            height: 10,
          ),
          Center(
            child: Text(
              monthText,
              style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Color.fromARGB(255, 128, 127, 127)),
            ),
          )
        ],
      ),
    );
  }
}
