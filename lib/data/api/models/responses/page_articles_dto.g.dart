// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_articles_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PageArticlesDto _$PageArticlesDtoFromJson(Map<String, dynamic> json) =>
    PageArticlesDto(
      articles: (json['docs'] as List<dynamic>)
          .map((e) => ArticleDto.fromJson(e as Map<String, dynamic>)),
      meta: PageArticlesMetaDto.fromJson(json['meta'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PageArticlesDtoToJson(PageArticlesDto instance) =>
    <String, dynamic>{
      'docs': instance.articles.toList(),
      'meta': instance.meta,
    };
