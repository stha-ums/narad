import 'dart:convert';

import 'package:intl/intl.dart';
import 'package:logging/logging.dart';
import 'package:narad/config/enviromet_variables/enviroment_variables.dart';
import 'package:narad/core/database_handler/db_handler.dart';
import 'package:narad/features/dashboard/data/models/news_model.dart';

abstract class NewsCacheDataSource {
  Future<List<ArticleModel>?> getCachedNews(
      {DateTime? to, DateTime? from, String? keyword});
}

class NewsCacheDataSourceImpl implements NewsCacheDataSource {
  final DataBaseHandler dataBaseHandler;
  final Logger _logger = Logger("NewsCacheDataSourceImpl");

  NewsCacheDataSourceImpl(this.dataBaseHandler);
  @override
  Future<List<ArticleModel>?> getCachedNews(
      {DateTime? to, DateTime? from, String? keyword}) async {
    _logger.info('getting from cache');
    final String fromDate = DateFormat('yyyy-MM-dd')
        .format(from ?? DateTime.now().subtract(const Duration(days: 7)));

    final String toDate = DateFormat('yyyy-MM-dd').format(to ?? DateTime.now());
    String fullUrl =
        'https://newsapi.org/v2/everything?q=$keyword&to=$toDate&from=$fromDate&sortBy=publishedAt&apiKey=${Env.apiKey}';

    final result = await dataBaseHandler.read(key: fullUrl);
    return result == null
        ? null
        : NewsModel.fromJson(json.decode(json.encode(result.object))
                    as Map<String, dynamic>)
                .articles ??
            [];
  }
}
