import 'package:narad/features/dashboard/domain/entities/articles.dart';

abstract class NewsRepository {
  /// returns list of articles or throws [ServerException] or [CacheException]
  Future<List<Article>> getNews(
      {DateTime? to, DateTime? from, String? keyword});

  /// returns list of articles or throws [ServerException] or [CacheException]
  Future<List<Article>> getFavoriteNews();

  Future<dynamic> setFavoriteNews(Article article);
  Future<dynamic> removeFavoriteNews(Article article);
  Future<dynamic> removeAllFavoriteNews();
}
