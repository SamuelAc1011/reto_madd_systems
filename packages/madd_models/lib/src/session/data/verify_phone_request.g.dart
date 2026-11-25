// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verify_phone_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_VerifyPhoneRequest _$VerifyPhoneRequestFromJson(Map<String, dynamic> json) =>
    _VerifyPhoneRequest(
      phone: json['phone'] as String,
      code: json['code'] as String,
    );

Map<String, dynamic> _$VerifyPhoneRequestToJson(_VerifyPhoneRequest instance) =>
    <String, dynamic>{'phone': instance.phone, 'code': instance.code};
