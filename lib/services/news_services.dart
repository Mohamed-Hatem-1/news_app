import 'package:dio/dio.dart';
import 'package:news_app/models/article_model.dart';

class NewsServices {
  NewsServices(this.dio);
  final Dio dio;

  Future<List<ArticleModel>> getGeneralNews({required String category}) async {
    try {
      var response = await dio.get(
          'https://newsapi.org/v2/top-headlines?country=us&apiKey=dd328fb3a17c4a38ab2e14bffd82787b&category=$category');

      Map<String, dynamic> jsonData = response.data;
      List<dynamic> articles = jsonData['articles'];

      List<ArticleModel> articlesList = [];
      for (var article in articles) {
        ArticleModel articleModel = ArticleModel.fromJson(article);
        articlesList.add(articleModel);
      }
      return articlesList;
    } catch (e) {
      return [];
    }
  }
}
