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
            fit: BoxFit.cover,
            opacity: 0.4,
            image: AssetImage('./assets/bg.jpg'),
          ),
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Icon(
                    Icons.near_me_rounded,
                    color: AppColors.white,
                    size: 40,
                  ),
                  Icon(
                    Icons.location_city_outlined,
                    color: AppColors.white,
                    size: 40,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 10),
                ),
                const Text('8', style: AppTextStyles.weaherDegree),
                Image.asset('./assets/cloud.png', height: 150)
              ],
            ),
            const SizedBox(height: 50),
            Align(
              alignment: Alignment.centerRight,
              child: Text(
                'You\'ll need and'.replaceAll(' ', '\n'),
                style: AppTextStyles.description,
              ),
            ),
            const SizedBox(height: 70),
            const Align(
              alignment: Alignment.centerRight,
              child: Text(
                'Bishkek',
                style: AppTextStyles.description,
              ),
            )
          ],
        ),
      ),
    );
  }
}
