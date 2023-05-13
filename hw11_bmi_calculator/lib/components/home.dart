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
      backgroundColor: const Color(0xff0A001F),
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


//https://youtu.be/jfoID_iJ_U8?list=PLWu9OGm_n5CcahNAV5AFUgww4Ee_5tJgU&t=3602