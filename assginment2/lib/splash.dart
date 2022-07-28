import 'dart:async';

import 'package:assginment2/Home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController controller;

  @override
  void initState() {
    super.initState();

    controller =
        new AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..forward();

    animation =
        new CurvedAnimation(parent: controller, curve: Curves.fastOutSlowIn);
    Timer(
        Duration(seconds: 3),
        () => Navigator.push(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.amber[300],
        body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          ScaleTransition(
            scale: animation,
            child: Center(
                child: Image.asset(
              "assets/image/Logofood.png",
              width: 300,
              height: 300,
            )),
          ),
          // Container(
          //   child: CircularStepProgressIndicator(
          //     totalSteps: 30,
          //     currentStep: 0,
          //     stepSize: 20,
          //     selectedColor: Colors.red,
          //     unselectedColor: Colors.white,
          //     padding: 3.14159 / 80,
          //     width: 150,
          //     height: 150,
          //     startingAngle: -3.14159 * 2 / 3,
          //     arcSize: 3.14159 * 2 / 3 * 2,
          //     gradientColor: LinearGradient(colors: [Colors.red, Colors.purple]),
          //   ),
          // )
        ]));
  }
}
