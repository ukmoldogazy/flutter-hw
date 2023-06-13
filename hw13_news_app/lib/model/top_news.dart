import 'article.dart';

class TopNews {
  TopNews({
    required this.status,
    required this.totalResults,
    required this.article,
  });

  final String status;
  final int totalResults;
  final List<Article> article;

  factory TopNews.fromJSON(Map<String, dynamic> json) => TopNews(
        status: json['status'],
        totalResults: json['totalResults'],
        article: List<Article>.from(
          (json['article']).map(
            (e) => Article.fromJSON(e),
          ),
        ),
      );
}
