import 'package:bmi/component/CustomGestureContainer.dart';
import 'package:bmi/component/sixe_box_flex.dart';
import 'package:flutter/material.dart';

class GenderSection extends StatelessWidget {
  const GenderSection(
      {Key? key,
      required this.isMail,
      required this.maleOnTap,
      required this.femaleOnTap})
      : super(key: key);
  final bool isMail;
  final void Function() maleOnTap;
  final void Function() femaleOnTap;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 9,
      child: Row(
        children: [
          CustomGestureContainer(
            onTap: maleOnTap,
            color: isMail ? const Color(0xff24263B) : const Color(0xff323244),
            icon: Icons.male_sharp,
            text: 'MALE',
          ),
          const SizeBoxFlex(),
          CustomGestureContainer(
            onTap: femaleOnTap,
            color: isMail ? const Color(0xff323244) : const Color(0xff24263B),
            icon: Icons.female_sharp,
            text: 'FEMALE',
          ),
        ],
      ),
    );
  }
}
