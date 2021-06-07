import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:covid/widgets/icon_content.dart';
import 'package:covid/widgets/reusable_card.dart';
import 'package:covid/constants/constants.dart';
import 'package:covid/widgets/bottom_button.dart';
import 'diseases.dart';

enum transportType { car, bus, subway, other }

class Transport extends StatefulWidget {
  @override
  _TransportState createState() => _TransportState();
}

class _TransportState extends State<Transport> {
  transportType selectedTransportType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Transport'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            flex: 1,
            child: Row(
              children: [
                // Car widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = transportType.car;
                      });
                    },
                    colour: selectedTransportType == transportType.car
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.car,
                      genderText: 'CAR',
                    ),
                  ),
                ),

                // Bus Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = transportType.bus;
                      });
                    },
                    colour: selectedTransportType == transportType.bus
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.bus,
                      genderText: 'Bus',
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
                // Subway widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = transportType.subway;
                      });
                    },
                    colour: selectedTransportType == transportType.subway
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.subway,
                      genderText: 'Subway',
                    ),
                  ),
                ),

                // others Widget
                Expanded(
                  flex: 1,
                  child: ReusableCard(
                    onPressed: () {
                      setState(() {
                        selectedTransportType = transportType.other;
                      });
                    },
                    colour: selectedTransportType == transportType.other
                        ? kActiveCardColor
                        : kInactiveCardColor,
                    cardChild: IconContent(
                      genderIcon: FontAwesomeIcons.trafficLight,
                      genderText: 'Others',
                    ),
                  ),
                ),
              ],
            ),
          ),
          BottomButton(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Diseases()),
              );
            },
            buttonTitle: 'NEXT',
          ),
        ],
      ),
    );
  }
}
