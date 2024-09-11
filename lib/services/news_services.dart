import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=dd328fb3a17c4a38ab2e14bffd82787b&category=$category');

      Map<String, dynamic> jsonData =
          response.data; // same as var jsonData = ....
      List<dynamic> articles =
          jsonData['articles']; // same as var articles = ....

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        articlesList.add(ArticleModel.fromJson(article));
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
