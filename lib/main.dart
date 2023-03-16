import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_effect/repo/network_api.dart';
import 'package:shimmer_effect/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (_) => NetworkApi())],
      child: const MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home: HomeScreen()),
    );
  }
}
