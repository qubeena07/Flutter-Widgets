import 'package:flutter/material.dart';
import 'package:shimmer_effect/widgets/actions_card.dart';
import 'package:shimmer_effect/widgets/bottom_navigation.dart';
import 'package:shimmer_effect/widgets/header_widget.dart';
import 'package:shimmer_effect/widgets/person_info.dart';

class SecondScreen extends StatefulWidget {
  const SecondScreen({super.key});

  @override
  State<SecondScreen> createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: Container(
        height: double.infinity,
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
              HeaderWidget(isMain: true),
              const SizedBox(
                height: 30,
              ),
              homeContainer(),
              const SizedBox(
                height: 30,
              ),
              Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 40),
                    child: Container(
                      height: 120,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            const Text(
                              "DATA ACTIONS",
                              style: TextStyle(
                                  fontSize: 18,
                                  color: Colors.black,
                                  fontWeight: FontWeight.w800),
                            ),
                            const Spacer(),
                            GestureDetector(
                              onTap: () {},
                              child: const Icon(
                                Icons.more_horiz,
                                color: Colors.grey,
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 18),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ActionCard(iconValue: Icons.file_download_rounded),
                          // const SizedBox(width: 15),
                          // const SizedBox(
                          //   width: double.infinity / 3,
                          // ),
                          ActionCard(iconValue: Icons.bar_chart),
                          // const SizedBox(width: 15),
                          ActionCard(iconValue: Icons.refresh),
                          // const SizedBox(width: 15),
                          ActionCard(iconValue: Icons.menu),
                        ],
                      ),
                    ),
                  )
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                "EMAIL OPEN RATE",
                style: TextStyle(
                    fontSize: 18,
                    color: Colors.black,
                    fontWeight: FontWeight.w800),
              ),
              const SizedBox(
                height: 10,
              ),
              PersonInfo(
                  name: "Robert Fox",
                  position: "CMO",
                  place: "Borer",
                  percentage: "63.4%",
                  urlImage:
                      'https://images.unsplash.com/photo-1616766098956-c81f12114571?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80'),
              const SizedBox(
                height: 20,
              ),
              PersonInfo(
                  name: "Marta Padberg",
                  position: "COO",
                  place: "Boehm",
                  percentage: "72.9%",
                  urlImage:
                      'https://images.unsplash.com/photo-1494790108377-be9c29b29330?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=634&q=80')
            ],
          ),
        ),
      ),
      bottomNavigationBar: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 13),
        child: BottomNavigationWidget(),
      ),
    );
  }

  Container homeContainer() {
    return Container(
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 193, 192, 192),
          borderRadius: BorderRadius.circular(18)),
      padding: const EdgeInsets.only(top: 18, left: 18, right: 18),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(8)),
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 4),
                  child: Center(
                    child: Text(
                      "LECTURE",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "B2B SALES\nTECHNIQUES",
                style: TextStyle(
                    fontSize: 30,
                    color: Colors.black,
                    fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "04.07.2022",
                style: TextStyle(
                    color: Color.fromARGB(255, 123, 122, 122), fontSize: 16),
              ),
              const SizedBox(
                height: 18,
              )
            ],
          ),
          // const SizedBox(
          //   width: 6,
          // ),
          SizedBox(
            height: 180,
            width: 140,
            child: Image.asset("assets/human.png"),
          ),
        ],
      ),
    );
  }
}
