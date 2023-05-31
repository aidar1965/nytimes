// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'article_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ArticleDto _$ArticleDtoFromJson(Map<String, dynamic> json) => ArticleDto(
      url: json['web_url'] as String,
      snippet: json['snippet'] as String,
      headline: HeadlineDto.fromJson(json['headline'] as Map<String, dynamic>),
      date: json['pub_date'] as String,
      sectionName: json['section_name'] as String?,
      byline: BylineDto.fromJson(json['byline'] as Map<String, dynamic>),
      multimedia: (json['multimedia'] as List<dynamic>?)?.map((e) =>
          e == null ? null : MultimediaDto.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$ArticleDtoToJson(ArticleDto instance) =>
    <String, dynamic>{
      'web_url': instance.url,
      'snippet': instance.snippet,
      'headline': instance.headline,
      'pub_date': instance.date,
      'section_name': instance.sectionName,
      'byline': instance.byline,
      'multimedia': instance.multimedia?.toList(),
    };
