import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/constants/colors.dart';

import '../constants/text_styles.dart';
import '../constants/texts.dart';

class Result extends StatelessWidget {
  const Result({super.key});

  @override
  Widget build(BuildContext context) {
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
                children: const [
                  Text(
                    'Нормалдуу',
                    style: TextStyle(
                      fontSize: 24,
                      color: AppColors.resultTitleColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    '24.2',
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  Text(
                    'Сиздин дене салмагыңыз нормалдуу. Азаматсыз!',
                    style: TextStyle(
                      fontSize: 13,
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
        onPressed: () {},
        child: const Text(
          AppTexts.result,
          style: AppTextStyle.calculateButtonText,
        ),
      ),
    );
  }
}
