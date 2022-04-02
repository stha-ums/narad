import 'package:narad/core/usecases/usecase.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

class GetFavoriteNews implements Usecase<List<Article>, NoParams> {
  final NewsRepository newsRepository;

  GetFavoriteNews({required this.newsRepository});
  @override
  Future<List<Article>> call(NoParams params) async =>
      newsRepository.getFavoriteNews();
}
