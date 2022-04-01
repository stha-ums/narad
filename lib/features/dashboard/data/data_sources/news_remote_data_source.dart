import 'package:intl/intl.dart';
import 'package:narad/config/enviromet_variables/enviroment_variables.dart';
import 'package:narad/core/http_client/http_client.dart';
import 'package:narad/features/dashboard/data/models/news_model.dart';

import '../../../../core/database_handler/db_handler.dart';

abstract class NewsRemoteDataSource {
  Future<List<ArticleModel>> getRemoteNews(
      {DateTime? to, DateTime? from, String? keyword});
}

class NewRemoteDataSourceImpl extends NewsRemoteDataSource {
  final HttpCalls httpCalls;
  final DataBaseHandler dataBaseHandler;

  NewRemoteDataSourceImpl(
      {required this.httpCalls, required this.dataBaseHandler});
  @override
  Future<List<ArticleModel>> getRemoteNews(
      {DateTime? to, DateTime? from, String? keyword}) async {
    final String fromDate = DateFormat('yyyy-MM-dd')
        .format(from ?? DateTime.now().subtract(const Duration(days: 7)));

    final String toDate = DateFormat('yyyy-MM-dd').format(to ?? DateTime.now());
    String fullUrl =
        'https://newsapi.org/v2/everything?q=$keyword&to=$toDate&from=$fromDate&sortBy=publishedAt&apiKey=${Env.apiKey}';
    print(fullUrl);
    final newsResponse =
        await httpCalls(url: fullUrl, method: ApiCallMethod.get);

    dataBaseHandler.write(key: fullUrl, value: newsResponse);
    return NewsModel.fromJson(newsResponse).articles ?? [];
  }
}
