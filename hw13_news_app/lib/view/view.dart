import 'package:flutter/material.dart';
import 'package:hw13_news_app/model/top_news.dart';
import 'package:hw13_news_app/services/fetch_service.dart';

import '../constants/api_const.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  TopNews? topNews;
  Future<void> fetchNews() async {
    topNews = await TopNewsRepo().fetchTopNews();
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
        backgroundColor: const Color(0xfffe5722),
        title: const Text(
          'News Aggregator',
          style: TextStyle(color: Colors.white),
        ),
        actions: const [
          Icon(
            Icons.more_vert_outlined,
            color: Colors.white,
          ),
        ],
      ),
      body: topNews == null
          ? const Center(child: CircularProgressIndicator())
          : ListView.builder(
              itemCount: topNews!.article.length,
              itemBuilder: (context, index) {
                final news = topNews!.article[index];
                return InkWell(
                  onTap: () {},
                  child: Card(
                    color: Colors.white,
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Expanded(
                            flex: 3,
                            child: Image.network(
                                news.urlToImage ?? APIConst.newsImage),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            flex: 5,
                            child: Text(
                              news.title,
                              style: const TextStyle(color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
    );
  }
}
