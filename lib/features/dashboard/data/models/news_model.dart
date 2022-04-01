import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:narad/features/dashboard/domain/entities/articles.dart';

part 'news_model.freezed.dart';
part 'news_model.g.dart';

@freezed
class NewsModel with _$NewsModel {
  const factory NewsModel({
    String? status,
    int? totalResults,
    List<ArticleModel>? articles,
  }) = _NewsModel;

  factory NewsModel.fromJson(Map<String, dynamic> json) =>
      _$NewsModelFromJson(json);
}

@freezed
class ArticleModel extends Article with _$ArticleModel {
  const factory ArticleModel({
    SourceModel? source,
    String? author,
    String? title,
    String? description,
    String? url,
    String? urlToImage,
    String? publishedAt,
    String? content,
  }) = _ArticleModel;

  factory ArticleModel.fromJson(Map<String, dynamic> json) =>
      _$ArticleModelFromJson(json);
}

@freezed
class SourceModel extends Source with _$SourceModel {
  const factory SourceModel({
    String? id,
    String? name,
  }) = _SourceModel;

  factory SourceModel.fromJson(Map<String, dynamic> json) =>
      _$SourceModelFromJson(json);
}
