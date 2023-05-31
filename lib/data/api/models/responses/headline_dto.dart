import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'headline_dto.g.dart';

@JsonSerializable()
class HeadlineDto {
  HeadlineDto({
    required this.main,
  });

  @JsonKey(name: 'main')
  final String main;

  static HeadlineDto fromJson(Object json) =>
      _$HeadlineDtoFromJson(json as Map<String, dynamic>);
}
