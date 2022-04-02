part of 'favorite_articles_bloc.dart';

@freezed
class FavoriteArticlesState with _$FavoriteArticlesState {
  const factory FavoriteArticlesState.initial() = _Initial;
  const factory FavoriteArticlesState.error({required String error}) = _Errror;
  const factory FavoriteArticlesState.loaded(
      {required List<Article> articles}) = _Loaded;
}
