import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/components/status_card_bottom.dart';
import 'package:hw11_bmi_calculator/constants/colors.dart';
import '../constants/texts.dart';
import './status_card.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
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
                children: const [
                  StatusCard(
                    icon: Icons.male,
                    text: 'MALE',
                  ),
                  SizedBox(width: 39),
                  StatusCard(
                    icon: Icons.female,
                    text: 'FEMALE',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: const [
                  StatusCard(
                    icon: Icons.height,
                    text: 'HEIGHT',
                  ),
                ],
              ),
            ),
            const SizedBox(height: 18),
            Expanded(
              child: Row(
                children: const [
                  StatusCardBottom(
                    icon: Icons.abc,
                    text: 'dd',
                    san: 3,
                  ),
                  SizedBox(width: 39),
                  StatusCardBottom(
                    icon: Icons.abc,
                    text: 'dd',
                    san: 3,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 73,
        width: double.infinity,
        color: AppColors.pinkColor,
        child: const Center(
          child: Text(AppTexts.calculator),
        ),
      ),
    );
  }
}


//https://youtu.be/jfoID_iJ_U8?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=3602