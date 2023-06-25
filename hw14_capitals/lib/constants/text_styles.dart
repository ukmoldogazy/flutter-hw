import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  static const testFalseNum = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.red,
  );
  static const testAllNum = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    color: AppColors.black,
  );
  static const testTrueNum = TextStyle(
    fontSize: 17,
    fontWeight: FontWeight.w700,
    color: AppColors.green,
  );

  static const capitals = TextStyle(
    fontSize: 26,
    color: AppColors.black,
    fontWeight: FontWeight.w800,
  );
}
