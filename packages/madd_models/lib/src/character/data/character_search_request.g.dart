// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'character_search_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_CharacterSearchRequest _$CharacterSearchRequestFromJson(
  Map<String, dynamic> json,
) => _CharacterSearchRequest(
  name: json['name'] as String,
  page: (json['page'] as num?)?.toInt() ?? 1,
);

Map<String, dynamic> _$CharacterSearchRequestToJson(
  _CharacterSearchRequest instance,
) => <String, dynamic>{'name': instance.name, 'page': instance.page};
