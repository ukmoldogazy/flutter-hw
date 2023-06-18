import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/article.dart';

class DetailNewsButton extends StatelessWidget {
  const DetailNewsButton({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final Uri uri = Uri.parse(article.url);
    return MaterialButton(
      hoverColor: Colors.amber,
      onPressed: () async {
        if (!await launchUrl(uri)) {
          throw Exception('Could not launch $uri');
        }
      },
      child: const Text('Link to website'),
    );
  }
}
