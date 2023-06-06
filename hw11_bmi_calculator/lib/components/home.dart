import 'dart:math';

import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/components/height.dart';

import 'package:hw11_bmi_calculator/constants/colors.dart';
import '../constants/texts.dart';
import './status_card.dart';
import 'calculate_button.dart';
import 'male_female.dart';
import 'result.dart';
import 'weight_age.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isTrue = true;
  int weight = 74;
  int age = 22;
  double height = 180;

  void results() {
    final result = weight / pow(height / 100, 2);

    if (result <= 18.5) {
      // debugPrint('You are underwweight: $result');
      _showAlertDialog(context, 'You are underwweight: $result');
    } else if (result >= 18.6 && result <= 25) {
      // debugPrint('You are normal: $result');
      _showAlertDialog(context, 'You are normal: $result');
    } else if (result >= 25.1 && result <= 30) {
      // debugPrint('You are overweight: $result');
      _showAlertDialog(context, 'You are overweight: $result');
    } else if (result >= 30.1 && result <= 35) {
      // debugPrint('You are obesity: $result');
      _showAlertDialog(context, 'You are obesity: $result');
    } else if (result <= 35.1) {
      // debugPrint('You are super triple obesity: $result');
      _showAlertDialog(context, 'You are super triple obesity: $result');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgColor,
      appBar: AppBar(
        title: const Text(AppTexts.bmi),
      ),
      body: Padding(
        padding:
            const EdgeInsets.only(top: 32, left: 21, bottom: 41, right: 21),
        child: Column(
          children: [
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = true;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.male,
                        text: AppTexts.male,
                        isTrue: isTrue,
                      ),
                    ),
                  ),
                  const SizedBox(width: 35),
                  StatusCard(
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          isTrue = false;
                        });
                      },
                      child: MaleFemale(
                        icon: Icons.female,
                        text: AppTexts.female,
                        isTrue: !isTrue,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            StatusCard(
              child: Height(
                textHeight: AppTexts.height,
                textNumber: '${height.toInt()}',
                textMeasurmment: 'cm',
                onChanged: (value) {
                  setState(() {
                    height = value;
                  });
                },
                height: height,
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: [
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.weight,
                      san: '$weight',
                      removePressButton: () {
                        setState(() {
                          weight--;
                        });
                      },
                      addPressButton: () {
                        setState(() {
                          weight++;
                        });
                      },
                    ),
                  ),
                  const SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '$age',
                      removePressButton: () {
                        setState(() {
                          age--;
                        });
                      },
                      addPressButton: () {
                        setState(() {
                          age++;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: CalculateButton(
        onPressed: () {
          results();
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const Result(),
            ),
          );
        },
      ),
    );
  }
}

// ÷=====÷=======================
Future<void> _showAlertDialog(BuildContext context, String text) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(AppTexts.bmi),
        content: Text(text),
        actions: <Widget>[
          TextButton(
            child: const Text('OK'),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
