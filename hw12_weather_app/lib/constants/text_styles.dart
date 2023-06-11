import 'package:flutter/material.dart';
import 'package:hw12_weather_app/constants/colors.dart';

class AppTextStyles {
  static const appTitle = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w800,
    color: AppColors.black,
  );

  static const citiesName = TextStyle(
    fontSize: 25,
    fontWeight: FontWeight.w500,
  );

  static const weaherDegree = TextStyle(
    color: AppColors.white,
    fontSize: 100,
    fontWeight: FontWeight.w500,
  );

  static const description = TextStyle(
    color: AppColors.white,
    fontSize: 70,
  );
}
