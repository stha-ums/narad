part of 'favorite_articles_bloc.dart';

@freezed
class FavoriteArticlesEvent with _$FavoriteArticlesEvent {
  const factory FavoriteArticlesEvent.getAllFavorites() = _GetAllFavorites;
  const factory FavoriteArticlesEvent.addToFavorites(
      {required Article article}) = _AddToFavorites;
  const factory FavoriteArticlesEvent.removeFromFavories(
      {required Article article}) = _RemoveFromFavorites;
  const factory FavoriteArticlesEvent.removeAll() = _RemoveAll;
}
