import 'package:flutter/material.dart';

import '../constants/text_styles.dart';
import 'circular_button.dart';

class WeightAge extends StatelessWidget {
  const WeightAge({
    super.key,
    required this.text,
    required this.san,
    required this.addPressButton,
    required this.removePressButton,
  });

  final String text;
  final String san;
  final void Function() addPressButton;
  final void Function() removePressButton;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          text,
          style: AppTextStyle.titleStyle,
        ),
        Text(
          san,
          style: AppTextStyle.sanTextStyle,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularButton(
              icon: Icons.remove,
              pressButton: removePressButton,
            ),
            const SizedBox(width: 10),
            CircularButton(
              icon: Icons.add,
              pressButton: addPressButton,
            ),
          ],
        )
      ],
    );
  }
}
