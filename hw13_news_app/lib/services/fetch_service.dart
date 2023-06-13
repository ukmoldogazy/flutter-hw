import 'package:http/http.dart' as http;
import 'package:hw13_news_app/constants/api_const.dart';

class TopNews {
  final http.Client client = http.Client();
  Future<void> fetchTopNews() async {
    final Uri uri = Uri.parse(APIConst.topNews);
    final http.Response response = await client.get(uri);

    if (response.statusCode == 200 || response.statusCode == 201) {
      print(response.body);
    }
  }
}
