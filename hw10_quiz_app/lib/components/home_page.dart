import 'package:flutter/material.dart';
import 'package:hw10_quiz_app/constants/app_text_style.dart';
import 'package:hw10_quiz_app/constants/colors.dart';
import 'package:hw10_quiz_app/use_file.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  UseQuiz useQuiz = UseQuiz();

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
            // const Spacer(),
            Text(
              useQuiz.getQuestion(),
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
                onPressed: () {
                  setState(() {
                    useQuiz.nextQuestion();
                  });
                },
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
