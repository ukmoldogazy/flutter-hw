import 'package:flutter/material.dart';
import '../constants/colors.dart';
import '../constants/text_styles.dart';
import '../constants/texts.dart';

class CalculateButton extends StatelessWidget {
  const CalculateButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 73,
      width: double.infinity,
      color: AppColors.pinkColor,
      child: const Center(
        child: Text(
          AppTexts.calculator,
          style: AppTextStyle.calculateButtonText,
        ),
      ),
    );
  }
}
