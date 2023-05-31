import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import 'package:nytimes/data/api/models/responses/byline_dto.dart';
import 'package:nytimes/data/api/models/responses/headline_dto.dart';
import 'package:nytimes/data/api/models/responses/multimedia_dto.dart';

part 'article_dto.g.dart';

@JsonSerializable()
class ArticleDto {
  ArticleDto({
    required this.url,
    required this.snippet,
    required this.headline,
    required this.date,
    this.sectionName,
    required this.byline,
    this.multimedia,
  });

  @JsonKey(name: 'web_url')
  final String url;

  @JsonKey(name: 'snippet')
  final String snippet;

  @JsonKey(name: 'headline')
  final HeadlineDto headline;

  @JsonKey(name: 'pub_date')
  final String date;

  @JsonKey(name: 'section_name')
  final String? sectionName;

  @JsonKey(name: 'byline')
  final BylineDto byline;

  @JsonKey(name: 'multimedia')
  final Iterable<MultimediaDto?>? multimedia;

  static ArticleDto fromJson(Object json) =>
      _$ArticleDtoFromJson(json as Map<String, dynamic>);
}
