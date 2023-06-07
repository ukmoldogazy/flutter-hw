import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/components/all_calculator.dart';
import 'package:hw11_bmi_calculator/constants/colors.dart';

import '../constants/text_styles.dart';
import '../constants/texts.dart';

class Result extends StatelessWidget {
  const Result({
    super.key,
    required this.heightOfYou,
    required this.weightOfYou,
  });

  final double heightOfYou;
  final int weightOfYou;

  @override
  Widget build(BuildContext context) {
    double results = BmiCalculator().bmi(
      height: heightOfYou,
      weight: weightOfYou,
    );

    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text('Result'),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 30, right: 30, top: 43),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 14),
              child: Text(
                'Жыйынтык',
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Container(
              height: 315,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: AppColors.cardColodr,
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    BmiCalculator().bmiResult(results),
                    style: const TextStyle(
                      fontSize: 24,
                      color: AppColors.resultTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    results.toStringAsFixed(1),
                    style: const TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    BmiCalculator().bmiDescription(results),
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: ElevatedButton(
        style: ElevatedButton.styleFrom(
            backgroundColor: AppColors.pinkColor,
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.zero),
            ),
            minimumSize: const Size(double.infinity, 73)),
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text(
          AppTexts.result,
          style: AppTextStyle.calculateButtonText,
        ),
      ),
    );
  }
}
