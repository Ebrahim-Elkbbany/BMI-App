import 'package:bmi/component/navigator_push.dart';
import 'package:bmi/component/button.dart';
import 'package:bmi/component/sixe_box_flex.dart';
import 'package:bmi/constants.dart';
import 'package:bmi/views/Widgets/gender_section.dart';
import 'package:bmi/views/Widgets/height_container.dart';
import 'package:bmi/views/Widgets/weight_age_section.dart';
import 'package:bmi/views/bmi_result_view.dart';
import 'package:flutter/material.dart';

class BmiHomeBody extends StatefulWidget {
  const BmiHomeBody({Key? key}) : super(key: key);

  @override
  State<BmiHomeBody> createState() => _BmiHomeBodyState();
}

class _BmiHomeBodyState extends State<BmiHomeBody> {
  bool isMail = true;
  double height = 180;
  int weight = 80;
  int age = 25;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          GenderSection(
            isMail: isMail,
            maleOnTap: () {
              setState(() {
                isMail = true;
              });
            },
            femaleOnTap: () {
              setState(() {
                isMail = false;
              });
            },
          ),
          const SizeBoxFlex(),
          Expanded(
            flex: 7,
            child: HeightContainer(
              height: height,
              onChanged: (value) {
                setState(() {
                  height = value;
                });
              },
            ),
          ),
          const SizeBoxFlex(),
          WeightAgeSection(
            weightAddOnPressed: () {
              setState(() {
                weight++;
              });
            },
            weightRemoveOnPressed: () {
              setState(() {
                weight--;
              });
            },
            weight: weight,
            ageAddOnPressed: () {
              setState(() {
                age++;
              });
            },
            ageRemoveOnPressed: () {
              setState(() {
                age--;
              });
            },
            age: age,
          ),
          const SizeBoxFlex(),
          Expanded(
            flex: 3,
            child: Button(
              text: 'CALCULATE',
              onPressed: () {
                navigatorPush(BmiResultView(height: height, weight: weight), context);
              },
            ),
          ),
        ],
      ),
    );
  }
}
