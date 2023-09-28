class ArticleModel {
  final String? image;
  final String title;
  final String? subTitle;
  final String url;

  ArticleModel({
    required this.image,
    required this.title,
    required this.subTitle,
    required this.url
  });

  factory ArticleModel.fromJson(json) {
    return ArticleModel(
        image: json['urlToImage'],
        title: json['title'],
        subTitle: json['description'],
        url: json['url']
    );
  }

}
