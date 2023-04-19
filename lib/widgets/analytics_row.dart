import 'package:flutter/material.dart';

class AnalyticsRow extends StatelessWidget {
  AnalyticsRow({super.key, required this.title, required this.cTitle});

  String title;
  String cTitle;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: const TextStyle(
              fontSize: 18, color: Colors.black, fontWeight: FontWeight.w700),
        ),
        const Spacer(),
        Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(4),
              border: Border.all(color: Colors.grey)),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Center(
              child: Text(
                cTitle,
                style: const TextStyle(
                    color: Colors.grey,
                    fontSize: 13,
                    fontWeight: FontWeight.w800),
              ),
            ),
          ),
        )
      ],
    );
  }
}
