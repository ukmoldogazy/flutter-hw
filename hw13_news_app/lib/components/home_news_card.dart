import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../constants/api_const.dart';
import '../model/article.dart';
import '../view/detail_view.dart';

class CardNews extends StatelessWidget {
  const CardNews({
    super.key,
    required this.news,
  });

  final Article news;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => DetailView(
              article: news,
            ),
          ),
        );
      },
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(4),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                flex: 3,
                child: CachedNetworkImage(
                  imageUrl: news.urlToImage ?? APIConst.newsImage,
                  placeholder: (context, url) =>
                      Image.asset('assets/wait-image.jpg'),
                  errorWidget: (context, url, error) =>
                      Image.asset('assets/error.png'),
                ),
                // Image.network(
                //     news.urlToImage ?? APIConst.newsImage),
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
  }
}
