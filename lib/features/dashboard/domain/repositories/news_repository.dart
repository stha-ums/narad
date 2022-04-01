import 'package:narad/features/dashboard/domain/entities/articles.dart';

abstract class NewsRepository {
  Future<List<Article>> getNews({
    DateTime? to,
    DateTime? from,
    String? keyword,
  });
}
