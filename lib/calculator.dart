import 'package:flutter/material.dart';
import 'dart:math';

class Calculator {
  Calculator(this.height, this.weight);

  final int height;
  final int weight;
  final int age = null;

  double _bmi;

  String calculateBMI() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi >= 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getDescription() {
    if (_bmi >= 25) {
      return 'You have an unhealthy bodyweight. Try exercising or dieting';
    } else if (_bmi > 18.5) {
      return 'You have a normal bodyweight. Well done!';
    } else {
      return 'You have an unhealthy bodyweight. Try eating more';
    }
  }
}
