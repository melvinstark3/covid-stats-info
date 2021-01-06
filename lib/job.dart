import 'package:covid/input_page1.dart';
import 'package:covid/transport.dart';
//import 'package:covid/results_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';
import 'calculator_brain.dart';

// deskjob =1, fieldjob =2
enum jobType { desk, field }

class Job extends StatefulWidget {
  @override
  _JobState createState() => _JobState();
}

class _JobState extends State<Job> {
  jobType selectedJob;
  int colleagues = 50;
  int jobTypeNum;
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
                      jobTypeNum = selectedJob == jobType.desk ? 2 : 1;
                      setState(() {
                        selectedJob = jobType.desk;
                      });
                    },
                    colour: selectedJob == jobType.desk
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.blackTie,
                      genderText: 'Desk Job',
                    ),
                  ),
                ),
                // field Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      jobTypeNum = selectedJob == jobType.field ? 1 : 2;
                      setState(() {
                        selectedJob = jobType.field;
                      });
                    },
                    colour: selectedJob == jobType.field
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                        genderIcon: FontAwesomeIcons.landmark,
                        genderText: 'Field Job'),
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
                          'Work Hours',
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
              CalculatorBrain calc = CalculatorBrain(
                  colleagues: colleagues,
                  jobTypeNum: jobTypeNum,
                  interactions: interaction,
                  workHours: workHours);
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Transport()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
