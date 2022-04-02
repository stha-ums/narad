import 'package:narad/core/usecases/usecase.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

class RemoveAllFavoriteNews implements Usecase<dynamic, NoParams> {
  final NewsRepository newsRepository;

  RemoveAllFavoriteNews({required this.newsRepository});
  @override
  Future<dynamic> call(NoParams params) async =>
      newsRepository.removeAllFavoriteNews();
}
