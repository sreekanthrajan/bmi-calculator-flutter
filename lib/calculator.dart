import 'dart:math';

import 'package:flutter/material.dart';

class CalculatorBrain {
  CalculatorBrain({@required this.weight, @required this.height});
  final int height;
  final int weight;
  double _bmi;
  String caculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(0);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Over weight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else
      return 'Under weight';
  }

  String getInterpretation() {
    if (_bmi >= 25) {
      return 'You have a weight more than a normal body weight,try to exercise';
    } else if (_bmi > 18.5) {
      return 'Good job keep it up';
    } else
      return 'You have a weight more than a normal body weight,try to eat more';
  }
}
