import 'package:flutter/material.dart';

import '../model/article.dart';
import '../theme/app_text_styles.dart';

class DetailNewsTitle extends StatelessWidget {
  const DetailNewsTitle({
    super.key,
    required this.article,
  });

  final Article article;

  @override
  Widget build(BuildContext context) {
    return Text(
      article.title,
      textAlign: TextAlign.center,
      style: AppTextStyles.titleTextStyle,
    );
  }
}
