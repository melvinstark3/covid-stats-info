import 'package:covid/input_page1.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'icon_content.dart';
import 'reusable_card.dart';
import 'constants.dart';
import 'bottom_button.dart';
import 'round_icon_button.dart';

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
        title: Text('COVID'),
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
