import 'package:flutter/material.dart';
import 'package:hw13_news_app/model/article.dart';
import 'package:hw13_news_app/theme/app_text_styles.dart';
import 'package:intl/intl.dart';
import 'package:share_plus/share_plus.dart';

import '../components/detail_news_button.dart';
import '../components/detail_news_time.dart';
import '../components/detail_news_title.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key, required this.article});
  final Article article;

  @override
  Widget build(BuildContext context) {
    final newsTime = DateFormat("d MMMM y H:m:s").format(
      DateTime.parse(article.publishedAt),
    );
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffe5722),
        title: Text(
          article.title,
        ),
        // ignore: unnecessary_null_comparison
        actions: article.url != null
            ? [
                IconButton(
                  onPressed: () {
                    Share.share(article.url, subject: 'Look what I made');
                  },
                  icon: const Icon(
                    Icons.share,
                    color: Color(0xffffffff),
                  ),
                )
              ]
            : null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: SingleChildScrollView(
          child: Column(
            children: [
              DetailNewsTitle(article: article),
              const SizedBox(height: 15),
              const Divider(color: Colors.white),
              DetailNewsTime(newsTime: newsTime),
              const SizedBox(height: 15),
              Image.network(article.urlToImage.toString()),
              const SizedBox(height: 15),
              const Divider(color: Colors.white),
              const SizedBox(height: 15),
              Text(
                article.description.toString(),
                textAlign: TextAlign.center,
                style: AppTextStyles.descriptionTextStyle,
              ),
              DetailNewsButton(article: article)
            ],
          ),
        ),
      ),
    );
  }
}
