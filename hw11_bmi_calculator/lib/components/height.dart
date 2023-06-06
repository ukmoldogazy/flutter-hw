import 'package:flutter/material.dart';
import '../constants/colors.dart';

class Height extends StatelessWidget {
  const Height({
    super.key,
    required this.textHeight,
    required this.textNumber,
    required this.textMeasurmment,
    required this.height,
    required this.onChanged,
  });

  final String textHeight;
  final String textNumber;
  final String textMeasurmment;
  final double height;
  final void Function(double) onChanged;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          textHeight,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.baseline,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Text(
              textNumber,
              style: const TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
              ),
            ),
            Text(
              textMeasurmment,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w800,
              ),
            ),
          ],
        ),
        SizedBox(
          width: 300,
          child: Slider.adaptive(
            value: height,
            min: 0,
            activeColor: AppColors.whiteColor,
            thumbColor: AppColors.pinkColor,
            max: 250,
            onChanged: onChanged,
          ),
        )
      ],
    );
  }
}
