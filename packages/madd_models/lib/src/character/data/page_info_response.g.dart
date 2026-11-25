// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'page_info_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_PageInfoResponse _$PageInfoResponseFromJson(Map<String, dynamic> json) =>
    _PageInfoResponse(
      count: (json['count'] as num).toInt(),
      pages: (json['pages'] as num).toInt(),
      next: json['next'] as String?,
      prev: json['prev'] as String?,
    );

Map<String, dynamic> _$PageInfoResponseToJson(_PageInfoResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pages': instance.pages,
      'next': instance.next,
      'prev': instance.prev,
    };
