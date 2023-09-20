import 'package:bmi/constants.dart';
import 'package:bmi/component/button.dart';
import 'package:bmi/views/Widgets/bmi_result_view_container_section.dart';
import 'package:bmi/views/Widgets/calculator.dart';
import 'package:flutter/material.dart';

import '../component/sixe_box_flex.dart';

class BmiResultView extends StatelessWidget {
  const BmiResultView({Key? key, required this.height, required this.weight})
      : super(key: key);
  final double height;
  final int weight;

  @override
  Widget build(BuildContext context) {
    Calculate result = Calculate(height: height, weight: weight);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Your Result',
                style: fontStyle40,
              ),
              const SizeBoxFlex(),
              BmiResultViewContainerSec(
                advice: result.getAdvise(),
                stateColor: result.textColor,
                state: result.getText(),
                bmiResult: result.bmiResult().toInt().toString(),
              ),
              const SizeBoxFlex(),
              Expanded(
                flex: 3,
                child: Button(
                  text: 'RE-CALCULATE',
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
