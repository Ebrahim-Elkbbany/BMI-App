import 'package:flutter/material.dart';

class SizeBoxFlex extends StatelessWidget {
  const SizeBoxFlex({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Expanded(
      flex: 1,
      child: SizedBox(),
    );
  }
}
