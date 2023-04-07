import 'package:flutter/material.dart';
import 'package:in_app_update/in_app_update.dart';
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

  //THIS CODE IS FOR IN-APP-UPDATE
  // CALL THIS ON INIT METHOD AND THE APP SHOULD BE AVAILABLE IN PLAYSTORE AND
  //RUN IN REAL DEVICE
  //FOR ANDROID ONLY
  updateAvailability() {
    InAppUpdate.checkForUpdate().then((updateInfo) {
      if (updateInfo.updateAvailability == UpdateAvailability.updateAvailable) {
        if (updateInfo.immediateUpdateAllowed) {
          InAppUpdate.performImmediateUpdate().then((appUpdateResult) {
            if (appUpdateResult == AppUpdateResult.success) {}
          });
        }
      } else if (updateInfo.flexibleUpdateAllowed) {
        InAppUpdate.startFlexibleUpdate().then((appUpdateResult) {
          if (appUpdateResult == AppUpdateResult.success) {
            InAppUpdate.completeFlexibleUpdate();
          }
        });
      }
    });
  }
}



//   Map<String, dynamic> map = {
//     'name':'hello',
//     'na2':'hello',
//     'name3':'hello',
//     'name4':'hello',
//     'name5':'hello',
//   };
  
//   List listValu = map.keys.toList();
//   List listvall = map.values.toList();
//   String a =listValu[2].toString();
//   String b = listvall[2].toString();
//   print(a);
//   print(b);