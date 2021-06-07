import 'package:covid/screens/precautions_choice.dart';
import 'package:covid/views/dashboard.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/screens/home_place.dart';
import 'package:url_launcher/url_launcher.dart';

enum choice { predict, stats, methods, vaccine }

void launchURL() async => await canLaunch(vaccineUrl)
    ? await launch(vaccineUrl)
    : throw 'Could not launch $vaccineUrl';

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
        centerTitle: true,
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PrecautionChoice()),
                      );
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
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Dashboard()),
                      );
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
                //Vaccine card
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: launchURL,
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
