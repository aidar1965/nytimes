import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'page_articles_meta_dto.g.dart';

@JsonSerializable()
class PageArticlesMetaDto {
  PageArticlesMetaDto({required this.offset});

  @JsonKey(name: 'offset')
  final int offset;

  static PageArticlesMetaDto fromJson(Object json) =>
      _$PageArticlesMetaDtoFromJson(json as Map<String, dynamic>);
}
