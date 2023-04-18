import 'package:flutter/material.dart';
import '../constants/app_text_style.dart';
import '../constants/colors.dart';

class CheckButton extends StatelessWidget {
  const CheckButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 70,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.trueBgColor,
        ),
        onPressed: () {},
        child: Text(
          text,
          style: AppTextStyle.falseTextStyle,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
