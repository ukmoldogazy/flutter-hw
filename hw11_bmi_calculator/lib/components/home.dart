import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/constants/text_styles.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:
            const Text('BMI CALCULATOR', style: AppTextStyle.appBarTextStyle),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Column(),
            ],
          )
        ],
      ),
    );
  }
}
