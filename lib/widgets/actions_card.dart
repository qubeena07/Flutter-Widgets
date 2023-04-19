import 'package:flutter/material.dart';

class ActionCard extends StatelessWidget {
  ActionCard({super.key, required this.iconValue, this.onTap});

  IconData iconValue;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: GestureDetector(
        onTap: onTap,
        child: Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: Padding(
              padding: const EdgeInsets.all(14),
              child: Center(
                child: Icon(
                  iconValue,
                  size: 35,
                ),
              ),
            )),
      ),
    );
  }
}
