import 'package:bmi/views/Widgets/weight_age_container.dart';
import 'package:flutter/material.dart';

import '../../component/sixe_box_flex.dart';

class WeightAgeSection extends StatelessWidget {
  const WeightAgeSection({
    Key? key,
    required this.weightAddOnPressed,
    required this.weightRemoveOnPressed,
    required this.weight,
    required this.ageAddOnPressed,
    required this.ageRemoveOnPressed,
    required this.age,
  }) : super(key: key);
  final void Function() weightAddOnPressed;
  final void Function() weightRemoveOnPressed;
  final void Function() ageAddOnPressed;
  final void Function() ageRemoveOnPressed;
  final int weight;
  final int age;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Row(
        children: [
          WeightAgeContainer(
            name: 'WEIGHT',
            nameNum: weight,
            addOnPressed: weightAddOnPressed,
            removeOnPressed: weightRemoveOnPressed,
          ),
          const SizeBoxFlex(),
          WeightAgeContainer(
            name: 'AGE',
            nameNum: age,
            addOnPressed: ageAddOnPressed,
            removeOnPressed: ageRemoveOnPressed,
          ),
        ],
      ),
    );
  }
}
