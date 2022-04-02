import 'package:narad/core/usecases/usecase.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

class SetFavoriteNews implements Usecase<dynamic, Article> {
  final NewsRepository newsRepository;

  SetFavoriteNews({required this.newsRepository});
  @override
  Future<dynamic> call(Article params) async =>
      newsRepository.setFavoriteNews(params);
}
