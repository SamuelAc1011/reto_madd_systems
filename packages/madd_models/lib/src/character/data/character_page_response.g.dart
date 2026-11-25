// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_page_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterPageResponse _$CharacterPageResponseFromJson(
  Map<String, dynamic> json,
) => _CharacterPageResponse(
  info: PageInfoResponse.fromJson(json['info'] as Map<String, dynamic>),
  results: (json['results'] as List<dynamic>)
      .map((e) => CharacterResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$CharacterPageResponseToJson(
  _CharacterPageResponse instance,
) => <String, dynamic>{
  'info': instance.info.toJson(),
  'results': instance.results.map((e) => e.toJson()).toList(),
};
