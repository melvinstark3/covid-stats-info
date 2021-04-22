import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'package:covid/screens/home_place.dart';

enum choice { predict, stats, methods, vaccine }

class AppChoice extends StatefulWidget {
  @override
  _AppChoiceState createState() => _AppChoiceState();
}

class _AppChoiceState extends State<AppChoice> {
  choice selectedChoice;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID-19'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                //predcitor card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedChoice = choice.predict;
                      });
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomePlace()),
                      );
                    },
                    colour: selectedChoice == choice.predict
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.calculator,
                      genderText: 'Predictor',
                    ),
                  ),
                ),
                //precautions card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedChoice = choice.methods;
                      });
                    },
                    colour: selectedChoice == choice.methods
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.handsWash,
                      genderText: 'Precautions',
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
                //stats card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedChoice = choice.stats;
                      });
                    },
                    colour: selectedChoice == choice.stats
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.chartBar,
                        genderText: 'COVID Stats'),
                  ),
                ),
                //stats card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedChoice = choice.vaccine;
                      });
                    },
                    colour: selectedChoice == choice.vaccine
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.syringe,
                      genderText: 'Vaccine Info',
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
