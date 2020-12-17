import 'package:covid/input_page1.dart';
//import 'package:covid/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
//import 'calculator_brain.dart';

enum jobType { desk, field }

class Job extends StatefulWidget {
  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  jobType selectedJob;
  int colleagues = 50;
  int interaction = 6;
  int workHours = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('COVID'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // desk widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedJob = jobType.desk;
                      });
                    },
                    colour: selectedJob == jobType.desk
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.blackTie,
                      genderText: 'Desk',
                    ),
                  ),
                ),
                // field Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedJob = jobType.field;
                      });
                    },
                    colour: selectedJob == jobType.field
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.landmark,
                        genderText: 'Field'),
                  ),
                ),
              ],
            ),
          ),

          // The Colleagues slider card
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Number of Colleagues',
                    style: kLabelTextStyle,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    children: [
                      Text(
                        colleagues.toString(),
                        style: kNumberTextStyle,
                      ),
                      Text(
                        ' Colleagues',
                        style: kLabelTextStyle,
                      ),
                    ],
                  ),
                  Slider(
                      value: colleagues.toDouble(),
                      min: kMinimumColleagues,
                      max: kMaximumColleagues,
                      activeColor: Color(0xFFEB1555),
                      inactiveColor: Color(0xFF8D8E98),
                      onChanged: (double newValue) {
                        setState(() {
                          colleagues = newValue.round();
                        });
                      })
                ],
              ),
            ),
          ),

          Expanded(
            flex: 1,
            child: Row(
              children: [
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Interacted People',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          interaction.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTap: () {
                                  setState(() {
                                    interaction++;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  if (interaction == 1) {
                                  } else {
                                    interaction--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'workHours',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          workHours.toString(),
                          style: kNumberTextStyle,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RoundIconButton(
                                icon: FontAwesomeIcons.plus,
                                onTap: () {
                                  setState(() {
                                    workHours++;
                                  });
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                setState(() {
                                  if (workHours == 1) {
                                  } else {
                                    workHours--;
                                  }
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InputPage1()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
