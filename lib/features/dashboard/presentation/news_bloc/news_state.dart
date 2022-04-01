part of 'news_bloc.dart';

@freezed
class NewsState with _$NewsState {
  const factory NewsState.initial() = _Initial;
  const factory NewsState.loading() = _Loading;
  const factory NewsState.loaded({required List<Article> news}) = _Loaded;
  const factory NewsState.error({required String message}) = _Error;
}
