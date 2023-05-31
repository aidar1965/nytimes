import 'dart:core';

import 'package:json_annotation/json_annotation.dart';
import 'package:nytimes/data/api/models/responses/page_articles_meta_dto.dart';

import 'article_dto.dart';

part 'page_articles_dto.g.dart';

@JsonSerializable()
class PageArticlesDto {
  PageArticlesDto({required this.articles, required this.meta});

  @JsonKey(name: 'docs')
  final Iterable<ArticleDto> articles;

  @JsonKey(name: 'meta')
  final PageArticlesMetaDto meta;

  static PageArticlesDto fromJson(Object json) =>
      _$PageArticlesDtoFromJson(json as Map<String, dynamic>);
}
