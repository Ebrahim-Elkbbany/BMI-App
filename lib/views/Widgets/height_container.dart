import 'package:flutter/material.dart';

class HeightContainer extends StatelessWidget {
  const HeightContainer(
      {Key? key, required this.height, required this.onChanged})
      : super(key: key);
  final double height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: const Color(0xff323244),
      ),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'HEIGHT',
            style: TextStyle(
              fontSize: 22,
              color: Colors.grey,
              fontWeight: FontWeight.w400,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.baseline,
            textBaseline: TextBaseline.alphabetic,
            children: [
              Text(
                height.toInt().toString(),
                style:
                    const TextStyle(fontWeight: FontWeight.w800, fontSize: 40),
              ),
              const Text(
                'cm',
                style: TextStyle(fontSize: 27),
              ),
            ],
          ),
          SliderTheme(
            data: const SliderThemeData(
              trackHeight: 0.5,
              thumbShape: RoundSliderThumbShape(enabledThumbRadius: 7),
            ),
            child: Slider(
              onChanged: onChanged,
              value: height,
              min: 80,
              max: 220,
              activeColor: const Color(0xffE83D66),
            ),
          ),
        ],
      ),
    );
  }
}
