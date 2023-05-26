import 'package:flutter/material.dart';
import 'package:hw11_bmi_calculator/constants/colors.dart';

class CircularButton extends StatelessWidget {
  const CircularButton({super.key, required this.icon});
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 45,
      height: 45,
      child: FloatingActionButton(
        backgroundColor: AppColors.greyColor,
        focusColor: AppColors.whiteColor,
        onPressed: () {},
        child: Icon(
          icon,
          color: AppColors.whiteColor,
        ),
      ),
    );
  }
}
