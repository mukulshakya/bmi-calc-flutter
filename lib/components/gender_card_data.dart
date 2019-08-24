import 'package:flutter/material.dart';
import 'package:bmi_calculator/constants.dart';

class GenderCardData extends StatelessWidget {
  final String gender;
  final IconData iconName;
  GenderCardData({@required this.gender, @required this.iconName});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          iconName,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          gender,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}

