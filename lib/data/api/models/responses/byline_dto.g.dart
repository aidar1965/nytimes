// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'byline_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BylineDto _$BylineDtoFromJson(Map<String, dynamic> json) => BylineDto(
      persons: (json['person'] as List<dynamic>)
          .map((e) => PersonDto.fromJson(e as Map<String, dynamic>)),
    );

Map<String, dynamic> _$BylineDtoToJson(BylineDto instance) => <String, dynamic>{
      'person': instance.persons.toList(),
    };
