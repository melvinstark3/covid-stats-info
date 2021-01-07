import 'package:covid/apartment.dart';
import 'package:covid/diseases.dart';
import 'package:covid/job.dart';
import 'package:covid/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page1.dart';
import 'home_place.dart';
import 'results_page.dart';
import 'transport.dart';
import 'splash.dart';

void main() => runApp(CovidCalculator());

class CovidCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/splash',
      routes: {
        '/': (context) => HomePlace(),
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
