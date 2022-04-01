import 'package:narad/core/usecases/usecase.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/repositories/news_repository.dart';

class GetNews implements Usecase<List<Article>, NewsDTO> {
  final NewsRepository newsRepository;

  GetNews({required this.newsRepository});
  @override
  Future<List<Article>> call(NewsDTO params) async => newsRepository.getNews(
        to: params.to,
        from: params.from,
        keyword: params.keyword,
      );
}

class NewsDTO {
  DateTime? to;
  DateTime? from;
  String? keyword;
  NewsDTO({
    this.to,
    this.from,
    this.keyword = '',
  });
}
