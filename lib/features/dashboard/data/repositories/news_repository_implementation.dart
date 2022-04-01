import 'package:narad/features/dashboard/data/data_sources/news_local_cache_data.dart';
import 'package:narad/features/dashboard/data/data_sources/news_remote_data_source.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

/// implementation of the newsrepository
/// to fetch the data from diffrent sources

class NewsRepositoryImplementation extends NewsRepository {
  final NewsRemoteDataSource newsRemoteDataSource;
  final NewsCacheDataSource newsCacheDataSource;

  NewsRepositoryImplementation({
    required this.newsRemoteDataSource,
    required this.newsCacheDataSource,
  });

  @override
  Future<List<Article>> getNews(
      {DateTime? to, DateTime? from, String? keyword}) async {
    try {
      return newsRemoteDataSource.getRemoteNews(
        to: to,
        from: from,
        keyword: keyword,
      );
    } catch (e) {
      final cachedData = await newsCacheDataSource.getCachedNews(
        to: to,
        from: from,
        keyword: keyword,
      );
      if (cachedData != null) {
        return cachedData;
      }
      rethrow;
    }
  }
}
