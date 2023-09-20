import 'package:flutter/material.dart';

class CustomGestureContainer extends StatelessWidget {
  const CustomGestureContainer(
      {Key? key,
      required this.onTap,
      this.isMail = true,
      required this.color,
      required this.icon,
      required this.text})
      : super(key: key);
  final void Function() onTap;
  final bool isMail;
  final Color color;
  final IconData icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: GestureDetector(
        onTap: onTap,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: color,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                //Icons.male_sharp,
                size: 90,
              ),
              Text(
                text,
                style: const TextStyle(fontSize: 20, color: Colors.grey),
              )
            ],
          ),
        ),
      ),
    );
  }
}
