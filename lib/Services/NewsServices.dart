import 'package:dio/dio.dart';
import 'package:newsapp/models/ArticleModel.dart';

class NewsServices {
  final dio = Dio();
  final String ApiKey = 'eb50a73814eb4a82845e3aa663748dc7';

  Future<List<ArticleModel>> GetNews({required String Category}) async {
    try {
      Response response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&category=$Category&apiKey=$ApiKey');
      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];
      List<ArticleModel> article_list = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel(
          imagePath: article['urlToImage'],
          title: article['title'],
          subtitle: article['description'],
        );
        article_list.add(articleModel);
      }
      return article_list;
    } catch (e) {
      //handle exception for request
      return [];
    }
  }
}
