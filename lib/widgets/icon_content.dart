import 'package:flutter/material.dart';
import 'package:covid/constants/constants.dart';

class IconContent extends StatelessWidget {
  final IconData genderIcon;
  final String genderText;
  const IconContent({@required this.genderIcon, @required this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          genderIcon,
          size: 80,
        ),
        SizedBox(
          height: 16,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        ),
      ],
    );
  }
}
