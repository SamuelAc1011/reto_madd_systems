// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_SessionState _$SessionStateFromJson(Map<String, dynamic> json) =>
    _SessionState(
      phone: json['phone'] as String?,
      lastQueryByPhone:
          (json['lastQueryByPhone'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(k, e as String),
          ) ??
          const <String, String>{},
    );

Map<String, dynamic> _$SessionStateToJson(_SessionState instance) =>
    <String, dynamic>{
      'phone': instance.phone,
      'lastQueryByPhone': instance.lastQueryByPhone,
    };
