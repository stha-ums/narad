import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:logging/logging.dart';
import 'package:narad/core/errors/exceptions/exceptions.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/usecases/get_news.dart';

part 'news_bloc.freezed.dart';
part 'news_event.dart';
part 'news_state.dart';

class NewsBloc extends Bloc<NewsEvent, NewsState> {
  final GetNews getNews;
  final Logger _logger = Logger("news_bloc");
  NewsBloc({required this.getNews}) : super(const _Initial()) {
    on<_Fetch>(_onFetch);
  }

  Future<void> _onFetch(_Fetch event, emit) async {
    try {
      emit(const NewsState.loading());
      _logger.info('fetching news');
      final news = await getNews(
          NewsDTO(keyword: event.keyword, to: event.to, from: event.from));
      _logger.info('fetched news');
      emit(NewsState.loaded(news: news));
    } on ServerException catch (e) {
      emit(NewsState.error(message: e.message));
    } on CacheException catch (e) {
      emit(NewsState.error(message: e.message));
    } catch (e) {
      _logger.info(e);
      emit(const NewsState.error(message: 'Unknown Error'));
    }
  }
}
