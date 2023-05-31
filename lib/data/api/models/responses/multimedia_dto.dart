import 'dart:core';

import 'package:json_annotation/json_annotation.dart';

part 'multimedia_dto.g.dart';

@JsonSerializable()
class MultimediaDto {
  MultimediaDto({
    this.url,
    this.type,
  });

  @JsonKey(name: 'url')
  final String? url;

  @JsonKey(name: 'type')
  final String? type;

  static MultimediaDto fromJson(Object json) =>
      _$MultimediaDtoFromJson(json as Map<String, dynamic>);
}
