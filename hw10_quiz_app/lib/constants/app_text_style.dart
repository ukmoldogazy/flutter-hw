import 'package:flutter/material.dart';
import './colors.dart';

class AppTextStyle {
  static const appBarTextStyle = TextStyle(
    color: AppColors.blackColor,
    fontSize: 24,
    fontWeight: AppColors.appBarTextFontWeight,
  );

  static const bodyTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 32,
    fontWeight: AppColors.appBarTextFontWeight,
  );

  static const trueTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 32,
  );

  static const falseTextStyle = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 32,
  );
}
