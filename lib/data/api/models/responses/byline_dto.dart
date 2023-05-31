import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

import 'package:nytimes/data/api/models/responses/person_dto.dart';

part 'byline_dto.g.dart';

@JsonSerializable()
class BylineDto {
  BylineDto({
    required this.persons,
  });

  @JsonKey(name: 'person')
  final Iterable<PersonDto> persons;

  static BylineDto fromJson(Object json) =>
      _$BylineDtoFromJson(json as Map<String, dynamic>);
}
