import 'package:covid/screens/post_precautions.dart';
import 'package:covid/screens/transport.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'package:url_launcher/url_launcher.dart';
import 'job.dart';

enum precType { pre, post }

void launchMURL() async => await canLaunch(methodsUrl)
    ? await launch(methodsUrl)
    : throw 'Could not launch $methodsUrl';

class PrecautionChoice extends StatefulWidget {
  @override
  _PrecautionChoiceState createState() => _PrecautionChoiceState();
}

class _PrecautionChoiceState extends State<PrecautionChoice> {
  precType selectedPrec;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Precautions'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: // launchMURL,
                  () {
                setState(() {
                  selectedPrec = precType.pre;
                });
              },
              colour: selectedPrec == precType.pre
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                genderIcon: FontAwesomeIcons.laptopHouse,
                genderText: 'COVID-19 Precautions',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedPrec = precType.post;
                });
              },
              colour: selectedPrec == precType.post
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                  genderIcon: FontAwesomeIcons.userTie,
                  genderText: 'Post-COVID Precautions'),
            ),
          ),
          BottomButton(
            onTap: () {
              if (selectedPrec == precType.pre) {
                launchMURL();
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => PostPrecautions()),
                );
              }
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
