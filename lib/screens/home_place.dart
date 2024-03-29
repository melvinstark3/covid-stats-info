import 'package:covid/screens/work.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'apartment.dart';
import 'work.dart';

enum home { house, apartment }

class HomePlace extends StatefulWidget {
  @override
  _HomePlaceState createState() => _HomePlaceState();
}

class _HomePlaceState extends State<HomePlace> {
  home selectedHome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You Live in ?'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedHome = home.house;
                });
              },
              colour: selectedHome == home.house
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                genderIcon: FontAwesomeIcons.home,
                genderText: 'House',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedHome = home.apartment;
                });
              },
              colour: selectedHome == home.apartment
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                  genderIcon: FontAwesomeIcons.building,
                  genderText: 'Apartment'),
            ),
          ),
          BottomButton(
            onTap: () {
              if (selectedHome == home.house) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Work()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Apartment()),
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
