import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/analytics_row.dart';
import 'package:shimmer_effect/widgets/header_widget.dart';

class AnalyticsScreen extends StatefulWidget {
  const AnalyticsScreen({super.key});

  @override
  State<AnalyticsScreen> createState() => _AnalyticsScreenState();
}

class _AnalyticsScreenState extends State<AnalyticsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: [Colors.grey.shade300, Colors.brown.shade100])),
        child: Padding(
          padding:
              const EdgeInsets.only(top: 70, left: 25, right: 25, bottom: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              HeaderWidget(isMain: false),
              const SizedBox(
                height: 50,
              ),
              AnalyticsRow(title: "KPI STATISTICS(%)", cTitle: "See More")
            ],
          ),
        ),
      ),
    );
  }
}
