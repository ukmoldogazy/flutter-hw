import 'package:flutter/material.dart';
import 'package:hw10_quiz_app/constants/app_text_style.dart';
import 'package:hw10_quiz_app/constants/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bodyBackgroundColor,
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        title: const Text(
          'Quiz app',
          style: AppTextStyle.appBarTextStyle,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Are there 7 regions on Kyrgyzstan?',
              style: AppTextStyle.bodyTextStyle,
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 102),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.trueBgColor,
                ),
                onPressed: () {},
                child: const Text(
                  'True',
                  style: AppTextStyle.trueTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              width: double.infinity,
              height: 70,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.falseBgColor,
                ),
                onPressed: () {},
                child: const Text(
                  'False',
                  style: AppTextStyle.falseTextStyle,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Row(
              children: const [
                Icon(
                  Icons.check,
                  color: AppColors.trueBgColor,
                  size: 40,
                ),
                Icon(
                  Icons.close,
                  color: AppColors.falseBgColor,
                  size: 40,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
