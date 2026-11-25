// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verify_phone_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$VerifyPhoneRequest {

/// Número celular del investigador.
 String get phone;/// Código de cuatro dígitos.
 String get code;
/// Create a copy of VerifyPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$VerifyPhoneRequestCopyWith<VerifyPhoneRequest> get copyWith => _$VerifyPhoneRequestCopyWithImpl<VerifyPhoneRequest>(this as VerifyPhoneRequest, _$identity);

  /// Serializes this VerifyPhoneRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as VerifyPhoneRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is VerifyPhoneRequest&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.code, _this.code) || other.code == _this.code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as VerifyPhoneRequest;
  return Object.hash(runtimeType,_this.phone,_this.code);
}

@override
String toString() {
  final _this = this as VerifyPhoneRequest;
  return 'VerifyPhoneRequest(phone: ${_this.phone}, code: ${_this.code})';
}


}

/// @nodoc
abstract mixin class $VerifyPhoneRequestCopyWith<$Res>  {
  factory $VerifyPhoneRequestCopyWith(VerifyPhoneRequest value, $Res Function(VerifyPhoneRequest) _then) = _$VerifyPhoneRequestCopyWithImpl;
@useResult
$Res call({
 String phone, String code
});




}
/// @nodoc
class _$VerifyPhoneRequestCopyWithImpl<$Res>
    implements $VerifyPhoneRequestCopyWith<$Res> {
  _$VerifyPhoneRequestCopyWithImpl(this._self, this._then);

  final VerifyPhoneRequest _self;
  final $Res Function(VerifyPhoneRequest) _then;

/// Create a copy of VerifyPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? phone = null,Object? code = null,}) {
  return _then(VerifyPhoneRequest(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [VerifyPhoneRequest].
extension VerifyPhoneRequestPatterns on VerifyPhoneRequest {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _VerifyPhoneRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _VerifyPhoneRequest() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _VerifyPhoneRequest value)  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneRequest():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _VerifyPhoneRequest value)?  $default,){
final _that = this;
switch (_that) {
case _VerifyPhoneRequest() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String phone,  String code)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _VerifyPhoneRequest() when $default != null:
return $default(_that.phone,_that.code);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String phone,  String code)  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneRequest():
return $default(_that.phone,_that.code);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String phone,  String code)?  $default,) {final _that = this;
switch (_that) {
case _VerifyPhoneRequest() when $default != null:
return $default(_that.phone,_that.code);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _VerifyPhoneRequest implements VerifyPhoneRequest {
  const _VerifyPhoneRequest({required this.phone, required this.code});
  factory _VerifyPhoneRequest.fromJson(Map<String, dynamic> json) => _$VerifyPhoneRequestFromJson(json);

/// Número celular del investigador.
@override final  String phone;
/// Código de cuatro dígitos.
@override final  String code;

/// Create a copy of VerifyPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$VerifyPhoneRequestCopyWith<_VerifyPhoneRequest> get copyWith => __$VerifyPhoneRequestCopyWithImpl<_VerifyPhoneRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$VerifyPhoneRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _VerifyPhoneRequest&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.code, code) || other.code == code));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,phone,code);
}

@override
String toString() {
    return 'VerifyPhoneRequest(phone: $phone, code: $code)';
}


}

/// @nodoc
abstract mixin class _$VerifyPhoneRequestCopyWith<$Res> implements $VerifyPhoneRequestCopyWith<$Res> {
  factory _$VerifyPhoneRequestCopyWith(_VerifyPhoneRequest value, $Res Function(_VerifyPhoneRequest) _then) = __$VerifyPhoneRequestCopyWithImpl;
@override @useResult
$Res call({
 String phone, String code
});




}
/// @nodoc
class __$VerifyPhoneRequestCopyWithImpl<$Res>
    implements _$VerifyPhoneRequestCopyWith<$Res> {
  __$VerifyPhoneRequestCopyWithImpl(this._self, this._then);

  final _VerifyPhoneRequest _self;
  final $Res Function(_VerifyPhoneRequest) _then;

/// Create a copy of VerifyPhoneRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? phone = null,Object? code = null,}) {
  return _then(_VerifyPhoneRequest(
phone: null == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String,code: null == code ? _self.code : code // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
