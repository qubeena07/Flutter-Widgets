import 'package:flutter/material.dart';

class PersonInfo extends StatelessWidget {
  PersonInfo(
      {super.key,
      required this.urlImage,
      this.name,
      this.position,
      this.percentage,
      this.place});
  String urlImage;
  String? name;
  String? position;
  String? place;
  String? percentage;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CircleImage(urlImage: urlImage),
        const SizedBox(
          width: 10,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name ?? "John James",
              style: const TextStyle(
                  fontWeight: FontWeight.w600,
                  fontSize: 20,
                  color: Colors.black),
            ),
            const SizedBox(
              height: 8,
            ),
            IntrinsicHeight(
              child: Row(
                children: [
                  Text(
                    position ?? "CEO",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 87, 87, 87)),
                  ),
                  const VerticalDivider(
                    color: Colors.black,
                    thickness: 0.2,

                    // thickness: 0.4,
                  ),
                  Text(
                    place ?? "CEO",
                    style: const TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 16,
                        color: Color.fromARGB(255, 87, 87, 87)),
                  ),
                ],
              ),
            ),
          ],
        ),
        const Spacer(),
        Text(
          percentage ?? "10%",
          style: const TextStyle(
              fontWeight: FontWeight.w700, fontSize: 20, color: Colors.black),
        ),
      ],
    );
  }
}

class CircleImage extends StatelessWidget {
  CircleImage({super.key, required this.urlImage, this.radius});
  String urlImage;
  double? radius;

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
        radius: radius ?? 30,
        backgroundImage: NetworkImage(
          urlImage,
        ));
  }
}
