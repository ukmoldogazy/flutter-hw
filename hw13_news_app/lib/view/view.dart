import 'package:flutter/material.dart';
import 'package:hw13_news_app/model/countries.dart';
import 'package:hw13_news_app/model/top_news.dart';
import 'package:hw13_news_app/services/fetch_service.dart';
import 'package:hw13_news_app/theme/app_colors.dart';
import 'package:hw13_news_app/theme/app_texts.dart';

import '../components/home_news_card.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews([String? domain]) async {
    topNews = null;
    setState(() {});
    topNews = await TopNewsRepo().fetchTopNews(domain);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();
    fetchNews();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.appBarBg,
        title: const Text(
          AppTexts.agr,
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          PopupMenuButton<Country>(onSelected: (Country item) async {
            await fetchNews(item.domain);
          }, itemBuilder: (BuildContext context) {
            return countriesSet
                .map((e) => PopupMenuItem<Country>(
                      value: e,
                      child: Text(e.name),
                    ))
                .toList();
          }),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return CardNews(news: news);
              },
            ),
    );
  }
}
