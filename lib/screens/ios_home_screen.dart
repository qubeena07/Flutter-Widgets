import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:shimmer_effect/screens/analytics_screen.dart';
import 'package:shimmer_effect/screens/charts_screen.dart';
import 'package:shimmer_effect/widgets/custom_button.dart';
import 'package:shimmer_effect/widgets/ios_home_card.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class IosHomeScreen extends StatefulWidget {
  const IosHomeScreen({super.key});

  @override
  State<IosHomeScreen> createState() => _IosHomeScreenState();
}

class _IosHomeScreenState extends State<IosHomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.brown[300]?.withOpacity(0.2),
      body: Container(
        height: double.infinity,
        decoration: BoxDecoration(
            image: const DecorationImage(
                image: AssetImage("assets/freeShape.png"),
                alignment: Alignment.bottomCenter,
                fit: BoxFit.fitWidth),
            gradient: LinearGradient(
                colors: [Colors.grey.shade300, Colors.brown.shade100])),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, left: 25, right: 25, bottom: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Row(
                children: const [
                  CircleAvatar(
                    backgroundColor: Colors.white,
                    child: Icon(
                      Icons.air_sharp,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "DATASET",
                    style: TextStyle(
                        fontSize: 22,
                        color: Colors.black,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              const SizedBox(
                height: 45,
              ),
              const Text(
                "YOUR BEST MARKETING &\nDATA ANALYSER",
                style: TextStyle(
                    fontSize: 25,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 20,
              ),
              RichText(
                text: const TextSpan(
                    text: 'Get a',
                    style: TextStyle(color: Colors.black, fontSize: 16),
                    children: <TextSpan>[
                      TextSpan(
                        text: ' clear vision',
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.w700,
                            fontSize: 16),
                      ),
                      TextSpan(
                        text: ' of business.',
                        style: TextStyle(color: Colors.black, fontSize: 16),
                      ),
                    ]),
              ),
              const SizedBox(
                height: 40,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    IosHomeCard(
                      // isStack: false,
                      firstText: "Best\nNew Solutions",
                      // sizedBoxHeight: 0,
                      contHeight: 160,
                      contWidth: 160,
                      cardWidget: SfCircularChart(
                        series: <CircularSeries>[
                          DoughnutSeries<ChartData, String>(
                              dataSource: chartData,
                              name: "Doughnut",
                              pointColorMapper: (ChartData data, _) =>
                                  data.color,
                              xValueMapper: (ChartData data, _) => data.x,
                              yValueMapper: (ChartData data, _) => data.y)
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 20,
                    ),
                    IosHomeCard(
                        // isStack: false,
                        firstText: "500+",
                        firstSize: 40,
                        subText: "businesses\nalready joined us!",
                        subSize: 12,
                        sizedBoxHeight: 100,
                        contHeight: 40,
                        contWidth: 100,
                        cardWidget: buildStackedImages()),
                  ],
                ),
              ),
              const SizedBox(
                height: 100,
              ),
              Center(
                child: SizedBox(
                  width: 300,
                  child: Stack(
                    children: [
                      const Padding(
                          padding: EdgeInsets.only(top: 18),
                          child: DottedLine(
                            direction: Axis.horizontal,
                            lineLength: double.infinity,
                            lineThickness: 1.5,
                            dashLength: 2.0,
                            dashColor: Colors.black,
                            dashGapLength: 4.0,
                            dashGapColor: Colors.transparent,
                            dashGapRadius: 0.0,
                          )
                          //  Divider(
                          //   color: Colors.black,
                          //   thickness: 2,
                          // ),
                          ),
                      Center(
                        child: CustomButton(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        const AnalyticsScreen()));
                          },
                          width: 180,
                          text: "Get started",
                          icon: Icons.arrow_circle_up,
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

Widget buildStackedImages({
  TextDirection direction = TextDirection.ltr,
}) {
  const double size = 40;
  const double xShift = 8;
  final urlImages = [
    'https://images.unsplash.com/photo-1554151228-14d9def656e4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=633&q=80',
    'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
    'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80',
  ];
  final items = urlImages.map((urlImage) => buildImage(urlImage)).toList();
  return StackedWidgets(
    direction: direction,
    items: items,
    size: size,
    xShift: xShift,
  );
}

Widget buildImage(String urlImage) {
  const double borderSize = 5;
  return ClipOval(
    child: Container(
      padding: const EdgeInsets.all(borderSize),
      color: Colors.white,
      child: ClipOval(
        child: Image.network(
          urlImage,
          fit: BoxFit.cover,
        ),
      ),
    ),
  );
}

class StackedWidgets extends StatelessWidget {
  final List<Widget> items;
  final TextDirection direction;
  final double size;
  final double xShift;
  const StackedWidgets({
    Key? key,
    required this.items,
    this.direction = TextDirection.ltr,
    this.size = 40,
    this.xShift = 8,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final allItems = items
        .asMap()
        .map((index, item) {
          final left = size - xShift;
          final value = Container(
            width: size,
            height: size,
            margin: EdgeInsets.only(left: left * index),
            child: item,
          );
          return MapEntry(index, value);
        })
        .values
        .toList();
    return Stack(
      children: direction == TextDirection.ltr
          ? allItems.reversed.toList()
          : allItems,
    );
  }
}
