import 'package:flutter/material.dart';

class IosHomeCard extends StatelessWidget {
  IosHomeCard(
      {super.key,
      this.firstText,
      this.firstSize,
      this.sizeBox1,
      this.subText,
      this.imageSrc,
      this.cardWidget,
      this.contHeight,
      // required this.isStack,
      this.contWidth,
      this.stackWidget,
      this.sizedBoxHeight,
      this.subSize});
  String? firstText;
  double? firstSize;
  double? sizeBox1;
  String? subText;
  double? subSize;
  double? sizedBoxHeight;
  String? imageSrc;
  Widget? cardWidget;
  double? contHeight;
  double? contWidth;
  Widget? stackWidget;
  // bool isStack;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 250,
      width: 190,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20), color: Colors.white),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              firstText ?? "Hello",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  fontSize: firstSize ?? 15),
            ),
            SizedBox(
              height: sizeBox1 ?? 0,
            ),
            Text(
              subText ?? "",
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  color: Colors.grey,
                  fontSize: subSize ?? 10),
            ),
            SizedBox(
              height: sizedBoxHeight ?? 0,
            ),

            SizedBox(height: contHeight, width: contWidth, child: cardWidget),
            // isStack
            //     ? Row(
            //         children: [
            //           SizedBox(
            //               height: contHeight,
            //               width: contWidth,
            //               child: cardWidget),
            //           SizedBox(
            //               height: contHeight,
            //               width: contWidth,
            //               child: cardWidget),
            //           SizedBox(
            //               height: contHeight,
            //               width: contWidth,
            //               child: cardWidget),
            //         ],
            //       )
            //     : const SizedBox.shrink()
          ],
        ),
      ),
    );
  }
}
