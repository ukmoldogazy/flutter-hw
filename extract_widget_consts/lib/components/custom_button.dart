import 'package:flutter/material.dart';
import '../constants/app_text_style.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, this.icon, required this.text});
  final IconData? icon;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 280,
      child: ElevatedButton(
        onPressed: () {},
        child: Row(
          children: [
            Icon(icon),
            const SizedBox(width: 30),
            Text(text, style: TextStyles.phoneNumberColor),
          ],
        ),
      ),
    );
  }
}
