import 'package:covid/job.dart';
import 'package:covid/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';
import 'home_place.dart';
import 'input_page1.dart';

class Apartment extends StatefulWidget {
  @override
  _ApartmentState createState() => _ApartmentState();
}

class _ApartmentState extends State<Apartment> {
  int floors = 10;
  int inhabitants = 6;
  int myFloor = 10;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          //Number of floors
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Number of Floors',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        floors.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' floors',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: floors.toDouble(),
                      min: kMinimumFloors,
                      max: kMaximumFloors,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          floors = newValue.round();
                        });
                      })
                ],
              ),
            ),
          ),

          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Number of Inhabitants on your floor',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        inhabitants.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' Inhabitants',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: inhabitants.toDouble(),
                      min: kMinimumInhabitants,
                      max: kMaximumInhabitants,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          inhabitants = newValue.round();
                        });
                      })
                ],
              ),
            ),
          ),

          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'I live on',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        myFloor.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        'th floor',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: myFloor.toDouble(),
                      min: kMinimumFloors,
                      max: kMaximumFloors,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          myFloor = newValue.round();
                        });
                      }),
                ],
              ),
            ),
          ),

          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Job()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
