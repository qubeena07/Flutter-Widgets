import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  const GridItem({required this.image, Key? key}) : super(key: key);
  final String image;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 4,
        vertical: 4,
      ),
      child: Image.asset(
        image,
        fit: BoxFit.cover,
      ),
    );
  }
}
