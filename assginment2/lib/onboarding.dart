import 'package:assginment2/login.dart';
import 'package:assginment2/splash.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';

class OnBoarding extends StatefulWidget {
  const OnBoarding({Key? key}) : super(key: key);

  @override
  State<OnBoarding> createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  @override
  Widget build(BuildContext context) {
    return OnBoardingSlider(
      finishButtonColor: Colors.black,
      pageBackgroundColor: Colors.amber[300],
      onFinish: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => SplashScreen()));
      },
      headerBackgroundColor: Colors.amber[300]!,
      finishButtonText: 'Get Started',
      skipTextButton: Text(
        'Skip',
        style: TextStyle(color: Colors.white),
      ),
      trailing: Text('Login'),
      trailingFunction: () {
        Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Login()));
      },
      background: [
        Center(
            child: Image.asset(
          "assets/image/chef.png",
          width: MediaQuery.of(context).size.width,
          height: 450,
        )),
        Center(
            child: Image.asset(
          "assets/image/boy.png",
          width: MediaQuery.of(context).size.width,
          height: 450,
        )),
        Center(
            child: Image.asset(
          "assets/image/food.png",
          width: MediaQuery.of(context).size.width,
          height: 450,
        )),
      ],
      totalPage: 3,
      speed: 1.8,
      pageBodies: [
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 1'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 2'),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 40),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 480,
              ),
              Text('Description Text 2'),
            ],
          ),
        ),
      ],
    );
  }
}
