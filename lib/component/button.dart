
import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({Key? key, required this.onPressed, required this.text}) : super(key: key);
  final void Function() onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed:onPressed,
      minWidth: double.infinity,
      color: const Color(0xffE83D66),
      height: 60,
      child:  Text(text, style: const TextStyle(fontSize: 20)),
    );
  }
}
