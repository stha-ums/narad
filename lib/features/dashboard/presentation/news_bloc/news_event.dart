part of 'news_bloc.dart';

@freezed
class NewsEvent with _$NewsEvent {
  const factory NewsEvent.fetch({
    DateTime? to,
    DateTime? from,
    String? keyword,
  }) = _Fetch;
}
