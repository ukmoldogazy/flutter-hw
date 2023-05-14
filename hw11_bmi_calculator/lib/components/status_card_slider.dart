import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../constants/colors.dart';

class StatusCardSlider extends StatelessWidget {
  const StatusCardSlider(
      {super.key,
      required this.textHeight,
      required this.san,
      required this.textNumber,
      required this.textMeasurmment});

  final String textHeight, textNumber, textMeasurmment;
  final int san;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: AppColors.cardColodr,
        child: Column(
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
              child: CupertinoSlider(
                value: 180,
                min: 0,
                // autofocus: true,
                activeColor: AppColors.whiteColor,
                thumbColor: AppColors.pinkColor,
                // inactiveColor: const Color(0xff888888),
                max: 250,
                // label: 'Set volume value',
                onChanged: (value) {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
