import 'package:covid/screens/input_page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'package:covid/methods/calculator_brain.dart';
import 'package:covid/widgets/round_icon_button.dart';

enum bloodGroup { ap, ane, bp, bne, abp, abne, op, one }

class BloodGroup extends StatefulWidget {
  @override
  _BloodGroupState createState() => _BloodGroupState();
}

class _BloodGroupState extends State<BloodGroup> {
  bloodGroup selectedBloodGroup;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Blood Group'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // A Blood Group widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Blood Group',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          'A',
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
                                  selectedBloodGroup = bloodGroup.ap;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InputPage1()),
                                  );
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                selectedBloodGroup = bloodGroup.ane;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputPage1()),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // B Blood Group Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Blood Group',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          'B',
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
                                  selectedBloodGroup = bloodGroup.bp;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InputPage1()),
                                  );
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                selectedBloodGroup = bloodGroup.bne;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputPage1()),
                                );
                              },
                            ),
                          ],
                        )
                      ],
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
                // AB Blood Group widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Blood Group',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          'AB',
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
                                  selectedBloodGroup = bloodGroup.abp;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InputPage1()),
                                  );
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                selectedBloodGroup = bloodGroup.abne;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputPage1()),
                                );
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),

                // O Blood Group Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    colour: kActiveCardColor,
                    cardChild: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Blood Group',
                          style: kLabelTextStyle,
                        ),
                        Text(
                          'O',
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
                                  selectedBloodGroup = bloodGroup.op;
                                  Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => InputPage1()),
                                  );
                                }),
                            SizedBox(
                              width: 10,
                            ),
                            RoundIconButton(
                              icon: FontAwesomeIcons.minus,
                              onTap: () {
                                selectedBloodGroup = bloodGroup.one;
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => InputPage1()),
                                );
                              },
                            ),
                          ],
                        )
                      ],
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
