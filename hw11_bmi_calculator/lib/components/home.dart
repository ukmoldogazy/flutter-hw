import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/components/height.dart';

import 'package:hw11_bmi_calculator/constants/colors.dart';
import '../constants/texts.dart';
import './status_card.dart';
import 'calculate_button.dart';
import 'male_female.dart';
import 'weight_age.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  bool isTrue = true;
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
            const StatusCard(
              child: Height(
                textHeight: AppTexts.height,
                textNumber: '180',
                textMeasurmment: 'cm',
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    child: WeightAge(text: AppTexts.weight, san: '60'),
                  ),
                  SizedBox(width: 25),
                  StatusCard(
                    child: WeightAge(
                      text: AppTexts.age,
                      san: '28',
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: const CalculateButton(),
    );
  }
}
