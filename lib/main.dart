import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shimmer_effect/repo/network_api.dart';
import 'package:shimmer_effect/screens/home_screen.dart';
import 'package:simple_internet_checker/src/screen/connectivity_screen.dart';

void main() {
  runApp(const MyApp());
}

final messengerKey = GlobalKey<ScaffoldMessengerState>();

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ConnectivityScreen(
      child: MultiProvider(
        providers: [
          ChangeNotifierProvider(create: (_) => NetworkApi()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'Flutter Demo',
          home:
              // const FlutterWebScreen(),
              const HomeScreen(),
          scaffoldMessengerKey: messengerKey,
        ),
      ),
    );
  }
}
