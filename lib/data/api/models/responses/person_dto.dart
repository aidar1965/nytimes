import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'person_dto.g.dart';

@JsonSerializable()
class PersonDto {
  PersonDto({
    required this.firstName,
    required this.lastName,
  });

  @JsonKey(name: 'firstname')
  final String? firstName;

  @JsonKey(name: 'lastname')
  final String? lastName;

  static PersonDto fromJson(Object json) =>
      _$PersonDtoFromJson(json as Map<String, dynamic>);
}
