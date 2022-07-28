import 'package:assginment2/Home.dart';
import 'package:assginment2/onboarding.dart';

import 'package:assginment2/splash.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

int? isrunned;
void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences pref = await SharedPreferences.getInstance();
  isrunned = await pref.getInt('isrunned');
  await pref.setInt('isrunned', 1);

  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Assginment2",
      initialRoute: isrunned == 0 || isrunned == null ? 'onboard' : 'splash',
      routes: {
        'splash': (context) => SplashScreen(),
        'onboard': (context) => OnBoarding()
      },
    );
  }
}
