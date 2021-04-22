import 'package:covid/screens/apartment.dart';
import 'package:covid/screens/appchoice.dart';
import 'package:covid/screens/diseases.dart';
import 'package:covid/screens/job.dart';
import 'package:covid/screens/results_page.dart';
import 'package:flutter/material.dart';
import 'package:covid/screens/input_page1.dart';
import 'package:covid/screens/home_place.dart';
import 'package:covid/screens/transport.dart';
import 'package:covid/screens/splash.dart';
import 'package:flutter/services.dart';

void main() => runApp(CovidCalculator());

class CovidCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/splash',
      routes: {
        '/appchoice': (context) => AppChoice(),
        '/homeplace': (context) => HomePlace(),
        '/splash': (context) => Splash(),
        '/apartment': (context) => Apartment(),
        '/job': (context) => Job(),
        '/inputPage1': (context) => InputPage1(),
        'transport': (context) => Transport(),
        'diseases': (context) => Diseases(),
        '/resultPage': (context) => ResultsPage(),
      },
    );
  }
}
