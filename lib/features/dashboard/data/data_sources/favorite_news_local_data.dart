import 'dart:convert';

import 'package:narad/core/database_handler/db_handler.dart';

import '../models/news_model.dart';

abstract class FavoriteNewsLocalData {
  Future<List<ArticleModel>> getAllFavoticenews();
  Future<dynamic> setFavoriteNews(ArticleModel article);
  Future<dynamic> removeFavoriteNews(ArticleModel article);
  Future<dynamic> removeAllFavoriteNews();
}

class FavoriteNewsLocalDataImple extends FavoriteNewsLocalData {
  final DataBaseHandler dataBaseHandler;

  FavoriteNewsLocalDataImple(this.dataBaseHandler);
  @override
  Future<List<ArticleModel>> getAllFavoticenews() async {
    final allArticles = (await dataBaseHandler.readAll());
    return allArticles
        .map((e) => ArticleModel.fromJson(
            json.decode(json.encode(e?.object)) as Map<String, dynamic>))
        .toList();
  }

  @override
  Future<dynamic> removeAllFavoriteNews() {
    return dataBaseHandler.clearAll();
  }

  @override
  Future<dynamic> removeFavoriteNews(ArticleModel article) {
    return dataBaseHandler.delete(key: article.title);
  }

  @override
  Future<dynamic> setFavoriteNews(ArticleModel article) {
    final json = article.toJson();
    json.addAll({"source": article.source?.toJson()});
    return dataBaseHandler.write(key: article.title ?? 'null', value: json);
  }
}
