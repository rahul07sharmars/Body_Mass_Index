import 'package:flutter/material.dart';
import 'dart:math';

class CalculateBrain {
  CalculateBrain({@required this.weight, @required this.height});
  final int weight;
  final int height;
  double _bmi;
  String CalculateBMI() {
    _bmi = (weight / pow(height / 100, 2));

    return _bmi.toStringAsFixed(2);
  }

  String getResult() {
    if (_bmi > 25)
      return 'Overweight';
    else if (_bmi > 18.5)
      return 'Normal';
    else
      return 'Underweight';
  }

  String getInterpretation() {
    if (_bmi > 25) {
      return 'You have higher than the normal body weight. Try to exercise more.';
    } else if (_bmi > 18.5) {
      return 'You have normal body weight, good. Maintaine it';
    } else
      return 'YOu have lower than the normal body weight. You can eat a mit more';
  }
}
