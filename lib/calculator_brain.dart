import 'dart:math';
import 'package:flutter/foundation.dart';

class CalculatorBrain {
  final double height;
  final double weight;
  CalculatorBrain({@required this.height, @required this.weight});

  double _bmi;

  String getBmi() {
    _bmi = weight/pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if(_bmi >= 25) {
      return 'Overweight';
    } else if(_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if(_bmi >= 25) {
      return 'You have higher than normal body weight. Try to exercise more.';
    } else if(_bmi > 18.5) {
      return 'You have normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. You can eat a bit more.';
    }
  }
}
