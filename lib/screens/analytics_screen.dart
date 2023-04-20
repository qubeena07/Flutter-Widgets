import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/analytics_row.dart';
import 'package:shimmer_effect/widgets/bar_column.dart';
import 'package:shimmer_effect/widgets/header_widget.dart';
import 'package:shimmer_effect/widgets/revenue_row.dart';
import 'package:shimmer_effect/widgets/stat_circle.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.grey.shade300, Colors.brown.shade100])),
          child: Padding(
            padding: const EdgeInsets.only(left: 25, right: 25, bottom: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                HeaderWidget(
                  isCenter: true,
                  isMain: false,
                  title: "                       ANALYTICS",
                ),
                const SizedBox(
                  height: 40,
                ),
                AnalyticsRow(title: "KPI STATISTICS(%)", cTitle: "See More"),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width / 1.70,
                      height: 180,
                      child: Stack(
                        children: [
                          Positioned(
                            bottom: 0,
                            right: 35,
                            child: StatCircle(
                              circleText: "84",
                              color: const Color.fromARGB(255, 245, 186, 110),
                              radius: 65,
                            ),
                          ),
                          Positioned(
                            top: 25,
                            left: 5,
                            child: StatCircle(
                              circleText: "63",
                              color: const Color.fromARGB(255, 219, 134, 109),
                              radius: 50,
                            ),
                          ),
                          Positioned(
                            right: 75,
                            child: StatCircle(
                              circleText: "0.49",
                              color: const Color.fromARGB(255, 149, 165, 254),
                              radius: 40,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        StatRow(
                          color: const Color.fromARGB(255, 245, 186, 110),
                          radius: 5,
                          rowText: "Gross Margin",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        StatRow(
                          color: const Color.fromARGB(255, 219, 134, 109),
                          radius: 5,
                          rowText: "CLR (Retention)",
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        StatRow(
                          color: const Color.fromARGB(255, 149, 165, 254),
                          radius: 5,
                          rowText: "Churn Rate",
                        ),
                      ],
                    )
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                AnalyticsRow(title: "SALES REVENUE", cTitle: "Monthly"),
                const SizedBox(
                  height: 20,
                ),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      BarColumn(height: 100, monthText: "Jan"),
                      BarColumn(height: 130, monthText: "Feb"),
                      BarColumn(
                        height: 160,
                        monthText: "Mar",
                        // color:
                      ),
                      BarColumn(height: 130, monthText: "Apr"),
                      BarColumn(height: 110, monthText: "May"),
                      BarColumn(height: 160, monthText: "Jun"),
                      BarColumn(height: 60, monthText: "Jul"),
                      BarColumn(height: 100, monthText: "Aug"),
                      BarColumn(height: 130, monthText: "Sep"),
                      BarColumn(height: 80, monthText: "Oct"),
                      BarColumn(height: 150, monthText: "Nov"),
                      BarColumn(height: 60, monthText: "Dec"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                IntrinsicHeight(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      RevenueRow(
                        rNum: "18k",
                        rTitle: "Monthly\nRevenue",
                      ),
                      const VerticalDivider(
                        color: Color.fromARGB(255, 74, 74, 74),
                        thickness: 0.4,
                      ),
                      RevenueRow(
                        rNum: "2%",
                        rTitle: "Revenue\nGrowth",
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
