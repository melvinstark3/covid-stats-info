import 'package:covid/screens/appchoice.dart';
import 'package:covid/screens/home_place.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:splashscreen/splashscreen.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SplashScreen(
      seconds: 5,
      image: new Image.asset('images/logo.jpg'),
      backgroundColor: Colors.white,
      photoSize: 200,
      loadingText: Text('Corona Predictor',
          style: TextStyle(
              color: Colors.black,
              fontFamily: 'MyFont',
              fontWeight: FontWeight.bold)),
      loaderColor: Colors.pink,
      navigateAfterSeconds: AppChoice(),
    );
  }
}
