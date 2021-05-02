import 'package:covid/screens/blood_group.dart';
import 'package:covid/screens/input_page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'package:covid/methods/calculator_brain.dart';
import 'package:covid/widgets/round_icon_button.dart';

enum diseases { fever, cough, diarrhoea, other }

class Diseases extends StatefulWidget {
  @override
  _DiseasesState createState() => _DiseasesState();
}

class _DiseasesState extends State<Diseases> {
  diseases selectedTransportType;
  int dColor = 0, fColor = 0, cColor = 0, oColor = 0, totalColor = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Symptoms/Diseases'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // fever widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = diseases.fever;
                        fColor = 1;
                      });
                    },
                    colour: fColor == 1 ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.thermometer,
                      genderText: 'Fever',
                    ),
                  ),
                ),

                // cough Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = diseases.cough;
                        cColor = 1;
                      });
                    },
                    colour: cColor == 1 ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.pills,
                      genderText: 'Dry Cough',
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // diarrhoea widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = diseases.diarrhoea;
                        dColor = 1;
                      });
                    },
                    colour: dColor == 1 ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.toiletPaper,
                      genderText: 'diarrhoea',
                    ),
                  ),
                ),

                // others Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = diseases.other;
                        oColor = 1;
                      });
                    },
                    colour: oColor == 1 ? kActiveCardColor : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.syringe,
                      genderText: 'Others',
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              totalColor = dColor + fColor + cColor + oColor;
              CalculatorBrain calc = CalculatorBrain(diseases: totalColor);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BloodGroup()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
