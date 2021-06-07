import 'package:covid/screens/transport.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'job.dart';

enum work { wfh, student }

class Work extends StatefulWidget {
  @override
  _WorkState createState() => _WorkState();
}

class _WorkState extends State<Work> {
  work selectedWork;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID'),
        centerTitle: true,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedWork = work.wfh;
                });
              },
              colour: selectedWork == work.wfh
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                genderIcon: FontAwesomeIcons.laptopHouse,
                genderText: 'Work From Home',
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: ReusableCard(
              onPressed: () {
                setState(() {
                  selectedWork = work.student;
                });
              },
              colour: selectedWork == work.student
                  ? kActiveCardColor
                  : kInactiveCardColor,
              cardChild: IconContent(
                  genderIcon: FontAwesomeIcons.userTie, genderText: 'Student'),
            ),
          ),
          BottomButton(
            onTap: () {
              if (selectedWork == work.wfh) {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Job()),
                );
              } else {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Transport()),
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
