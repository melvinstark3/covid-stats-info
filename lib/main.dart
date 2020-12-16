import 'package:covid/results_page.dart';
import 'package:flutter/material.dart';
import 'input_page1.dart';
import 'home_place.dart';
import 'results_page.dart';

void main() => runApp(CovidCalculator());

class CovidCalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark().copyWith(
        primaryColor: Color(0xFF0A0E21),
        scaffoldBackgroundColor: Color(0xFF0A0E21),
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePlace(),
        '/resultPage': (context) => ResultsPage(),
        '/inputPage1': (context) => InputPage1(),
      },
    );
  }
}
