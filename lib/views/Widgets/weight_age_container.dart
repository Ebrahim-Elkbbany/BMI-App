import 'package:flutter/material.dart';

class WeightAgeContainer extends StatelessWidget {
  const WeightAgeContainer(
      {Key? key,
      required this.name,
      required this.nameNum,
      required this.addOnPressed,
      required this.removeOnPressed})
      : super(key: key);
  final String name;
  final int nameNum;
  final void Function() addOnPressed;
  final void Function() removeOnPressed;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 10,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: const Color(0xff323244),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              name,
              style: const TextStyle(
                fontSize: 18,
                color: Colors.grey,
                fontWeight: FontWeight.w400,
              ),
            ),
            const SizedBox(
              height: 7,
            ),
            Text(
              '$nameNum',
              style: const TextStyle(fontWeight: FontWeight.w900, fontSize: 40),
            ),
            const SizedBox(
              height: 7,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FloatingActionButton(
                  heroTag: null,
                  backgroundColor: const Color(0xff5D5F6E),
                  onPressed: addOnPressed,
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
                FloatingActionButton(
                  heroTag: null,
                  backgroundColor: const Color(0xff5D5F6E),
                  onPressed: removeOnPressed,
                  child: const Icon(
                    Icons.remove,
                    color: Colors.white,
                    size: 35,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
