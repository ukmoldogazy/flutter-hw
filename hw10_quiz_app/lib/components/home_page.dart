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
  List<Icon> getIcons = [];

  void checker(bool use) {
    bool correctAnswer = useQuiz.getAnswer();
    setState(
      () {
        if (useQuiz.iseFinished() == true) {
          showDialog<void>(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return AlertDialog(
                title: const Text('Cencel booking'),
                content: SingleChildScrollView(
                  child: ListBody(
                    children: const <Widget>[
                      Text('Are you sure want to cencel bkooking?'),
                    ],
                  ),
                ),
                actions: <Widget>[
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('No'),
                  ),
                ],
              );
            },
          );
          useQuiz.indexZero();
        } else {
          if (correctAnswer == use) {
            getIcons.add(const Icon(Icons.check, color: Colors.green));
          } else {
            getIcons.add(const Icon(Icons.close, color: Colors.red));
          }
          useQuiz.nextQuestion();
        }
      },
    );
  }

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

            SizedBox(
              height: 30,
              child: ListView.builder(
                  itemCount: getIcons.length,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return getIcons[index];
                  }),
            )
          ],
        ),
      ),
    );
  }
}
