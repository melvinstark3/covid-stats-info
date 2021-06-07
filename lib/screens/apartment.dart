import 'package:covid/screens/work.dart';
import 'package:flutter/material.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'package:covid/methods/calculator_brain.dart';

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
              CalculatorBrain calc = CalculatorBrain(
                  floors: floors, inhabitants: inhabitants, myFloor: myFloor);
              print(myFloor);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Work()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
