import 'package:flutter/material.dart';
import 'round_icon_button.dart';
import 'package:bmi_calculator/constants.dart';

class WeightAgeCardData extends StatelessWidget {
  final String label;
  final int value;
  final IconData icon1;
  final IconData icon2;
  final Function onPressMinus;
  final Function onPressPlus;
  WeightAgeCardData({
    this.label,
    this.value,
    this.icon1,
    this.icon2,
    this.onPressMinus,
    this.onPressPlus,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          label,
          style: kLabelTextStyle,
        ),
        Text(
          value.toString(),
          style: kNumberTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            RoundIconButton(
              icon: icon1,
              onPress: onPressMinus,
            ),
            SizedBox(
              width: 10.0,
            ),
            RoundIconButton(
              icon: icon2,
              onPress: onPressPlus,
            ),
          ],
        ),
      ],
    );
  }
}
