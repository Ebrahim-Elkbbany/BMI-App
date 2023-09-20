import 'dart:math';
import 'package:flutter/material.dart';

class Calculate {
  Calculate({required this.height, required this.weight});
  final double height;
  final int weight;
  final bmi =0;
  Color textColor = const Color(0xFF24D876);

   double bmiResult() {
    double bmi = (weight / pow(height / 100, 2));
    return bmi;
  }

  String getText() {
    if (bmiResult() >= 25) {
      return 'OVERWEIGHT';
    } else if (bmiResult() > 18.5) {
      return 'NORMAL';
    } else {
      return 'UNDERWEIGHT';
    }
  }

  String getAdvise() {
    if (bmiResult() >= 25) {
      return 'You have a more than normal body weight.\n Try to do more Exercise';
    } else if (bmiResult() > 18.5) {
      return 'You have a normal body weight.\nGood job!';
    } else {
      return 'You have a lower than normal body weight.\n Try to eat more';
    }
  }

  Color getTextColor() {
    if (bmiResult() >= 25 || bmiResult() <= 18.5) {
      return Colors.deepOrangeAccent;
    } else {
      return const Color(0xFF24D876);
    }
  }
}