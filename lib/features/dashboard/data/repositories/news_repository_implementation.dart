import 'package:narad/core/network/network.dart';
import 'package:narad/features/dashboard/data/data_sources/favorite_news_local_data.dart';
import 'package:narad/features/dashboard/data/data_sources/news_local_cache_data.dart';
import 'package:narad/features/dashboard/data/data_sources/news_remote_data_source.dart';
import 'package:narad/features/dashboard/data/models/news_model.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

/// implementation of the newsrepository
/// to fetch the data from diffrent sources

class NewsRepositoryImplementation extends NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;
  final NewsCacheDataSource newsCacheDataSource;
  final FavoriteNewsLocalData favoriteNewsLocalData;
  final Network network;

  NewsRepositoryImplementation(
      {required this.newsRemoteDataSource,
      required this.newsCacheDataSource,
      required this.network,
      required this.favoriteNewsLocalData});

  @override
  Future<List<Article>> getNews(
      {DateTime? to, DateTime? from, String? keyword}) async {
    if (network.isConnected) {
      return newsRemoteDataSource.getRemoteNews(
        to: to,
        from: from,
        keyword: keyword,
      );
    } else {
      final cachedData = await newsCacheDataSource.getCachedNews(
          to: to, from: from, keyword: keyword);
      return cachedData ?? [];
    }
  }

  @override
  Future<List<Article>> getFavoriteNews() {
    return favoriteNewsLocalData.getAllFavoticenews();
  }

  @override
  Future<dynamic> removeAllFavoriteNews() {
    return favoriteNewsLocalData.removeAllFavoriteNews();
  }

  @override
  Future<dynamic> removeFavoriteNews(Article article) {
    return favoriteNewsLocalData.removeFavoriteNews(article as ArticleModel);
  }

  @override
  Future<dynamic> setFavoriteNews(Article article) {
    return favoriteNewsLocalData.setFavoriteNews(article as ArticleModel);
  }
}
