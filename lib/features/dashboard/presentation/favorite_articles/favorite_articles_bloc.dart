import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narad/core/usecases/usecase.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';
import 'package:narad/features/dashboard/domain/usecases/get_favorite_news.dart';
import 'package:narad/features/dashboard/domain/usecases/remove_all_favorite_news.dart';
import 'package:narad/features/dashboard/domain/usecases/remove_favorite_news.dart';
import 'package:narad/features/dashboard/domain/usecases/set_favorite_news.dart';

part 'favorite_articles_bloc.freezed.dart';
part 'favorite_articles_event.dart';
part 'favorite_articles_state.dart';

class FavoriteArticlesBloc
    extends Bloc<FavoriteArticlesEvent, FavoriteArticlesState> {
  final GetFavoriteNews getFavoriteNews;
  final RemoveAllFavoriteNews removeAllFavoriteNews;
  final RemoveFromFavoriteNews removeFromFavoriteNews;
  final SetFavoriteNews setFavoriteNews;
  FavoriteArticlesBloc({
    required this.getFavoriteNews,
    required this.removeAllFavoriteNews,
    required this.removeFromFavoriteNews,
    required this.setFavoriteNews,
  }) : super(const _Initial()) {
    on<_GetAllFavorites>(_onGetAllFavoriteArticles);
    on<_AddToFavorites>(_onAddToFavoriteArticles);
    on<_RemoveFromFavorites>(_onRemoveFromFavoriteArticles);
    on<_RemoveAll>(_onRemoveAllFavoriteArticles);
  }

  _onGetAllFavoriteArticles(_GetAllFavorites event, emit) async {
    emit(FavoriteArticlesState.loaded(
        articles: await getFavoriteNews(NoParams())));
  }

  _onAddToFavoriteArticles(_AddToFavorites event, emit) async {
    await setFavoriteNews(event.article);
    emit(FavoriteArticlesState.loaded(
        articles: await getFavoriteNews(NoParams())));
  }

  _onRemoveFromFavoriteArticles(_RemoveFromFavorites event, emit) async {
    await removeFromFavoriteNews(event.article);

    emit(FavoriteArticlesState.loaded(
        articles: await getFavoriteNews(NoParams())));
  }

  _onRemoveAllFavoriteArticles(_RemoveAll event, emit) async {
    await removeAllFavoriteNews(NoParams());
    emit(FavoriteArticlesState.loaded(
        articles: await getFavoriteNews(NoParams())));
  }
}
