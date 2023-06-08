import 'package:flutter/material.dart';
import 'package:hw12_weather_app/constants/colors.dart';
import 'package:hw12_weather_app/constants/text_styles.dart';
import 'package:hw12_weather_app/constants/texts.dart';

class MyHomeView extends StatefulWidget {
  const MyHomeView({super.key});

  @override
  State<MyHomeView> createState() => _MyHomeViewState();
}

class _MyHomeViewState extends State<MyHomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBg,
        title: const Text(
          AppTexts.appTitle,
          style: AppTextStyles.appTitle,
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('./assets/bg.jpg'),
          ),
        ),
      ),
    );
  }
}
