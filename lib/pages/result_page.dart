import 'package:bmi_calculator/components/bottom_container.dart';
import 'package:flutter/material.dart';
import 'package:bmi_calculator/components/reusable_card.dart';
import 'package:bmi_calculator/constants.dart';

class ResultPage extends StatelessWidget {
  final String bmi;
  final String resultText;
  final String interpretation;

  ResultPage(
      {@required this.bmi,
      @required this.interpretation,
      @required this.resultText});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI Calculator'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Padding(
            padding: EdgeInsets.fromLTRB(15.0, 20.0, 0.0, 10.0),
            child: Text(
              'Your Result',
              style: kNumberTextStyle.apply(
                fontSizeDelta: -10.0,
                fontFamily: 'Poppins',
                letterSpacingDelta: 2.0,
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              colour: kActiveCardColor,
              cardChild: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Text(
                    resultText.toUpperCase(),
                    style: kNumberTextStyle.apply(
                      color: Colors.greenAccent,
                      fontSizeDelta: -30.0,
                      fontFamily: 'Poppins',
                      letterSpacingDelta: 2.0,
                    ),
                  ),
                  Text(
                    bmi,
                    style: kNumberTextStyle.apply(
                      fontSizeDelta: 30.0,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.0),
                    child: Text(
                      interpretation,
                      textAlign: TextAlign.center,
                      style: kLabelTextStyle.apply(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          BottomContainer(
            containerTitle: 'RE-CALCULATE',
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
