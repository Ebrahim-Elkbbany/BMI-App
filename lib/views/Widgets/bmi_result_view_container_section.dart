import 'package:bmi/constants.dart';
import 'package:bmi/views/Widgets/calculator.dart';
import 'package:flutter/material.dart';

class BmiResultViewContainerSec extends StatelessWidget {
  const BmiResultViewContainerSec({Key? key, required this.state, required this.bmiResult, required this.advice, required this.stateColor,})
      : super(key: key);
  final String state;
  final String bmiResult;
  final String advice;
  final Color stateColor;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 29,
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: kSecondaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Text(
              state,
              style: fontStyle40.copyWith(
                color: stateColor,
                fontSize: 30
              ),
            ),
            Text(
              bmiResult,
              style: fontStyle40,
            ),
            Text(
              advice,
              textAlign: TextAlign.center,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.grey,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
