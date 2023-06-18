import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:hw13_news_app/constants/api_const.dart';
import 'package:hw13_news_app/model/top_news.dart';

class TopNewsRepo {
  final http.Client client = http.Client();
  Future<TopNews?> fetchTopNews() async {
    final Uri uri = Uri.parse(APIConst.topNews);
    final http.Response response = await client.get(uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
      print('------------------');
      print(response.body.runtimeType);
      print('------------------');
      final data = jsonDecode(response.body);
      print(data.runtimeType);
      print('------------------');

      final topNews = TopNews.fromJSON(data);
      print(topNews);
      return topNews;
    }
    return null;
  }
}
