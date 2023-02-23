import 'package:freezed_annotation/freezed_annotation.dart';

part 'qiita_article.freezed.dart';
part 'qiita_article.g.dart';

@freezed
abstract class QiitaArticle with _$QiitaArticle {
  factory QiitaArticle({
    required String title,
    required String url,
    required QiitaUser user,
    required List<Tag> tags,
  }) = _QiitaArticle;

  factory QiitaArticle.fromJson(Map<String, dynamic> json) =>
      _$QiitaArticleFromJson(json);
}
