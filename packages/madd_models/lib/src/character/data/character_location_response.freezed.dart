// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_location_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterLocationResponse {

/// Nombre del lugar.
 String get name;/// URL del recurso en la API.
 String get url;
/// Create a copy of CharacterLocationResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterLocationResponseCopyWith<CharacterLocationResponse> get copyWith => _$CharacterLocationResponseCopyWithImpl<CharacterLocationResponse>(this as CharacterLocationResponse, _$identity);

  /// Serializes this CharacterLocationResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CharacterLocationResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterLocationResponse&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.url, _this.url) || other.url == _this.url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CharacterLocationResponse;
  return Object.hash(runtimeType,_this.name,_this.url);
}

@override
String toString() {
  final _this = this as CharacterLocationResponse;
  return 'CharacterLocationResponse(name: ${_this.name}, url: ${_this.url})';
}


}

/// @nodoc
abstract mixin class $CharacterLocationResponseCopyWith<$Res>  {
  factory $CharacterLocationResponseCopyWith(CharacterLocationResponse value, $Res Function(CharacterLocationResponse) _then) = _$CharacterLocationResponseCopyWithImpl;
@useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class _$CharacterLocationResponseCopyWithImpl<$Res>
    implements $CharacterLocationResponseCopyWith<$Res> {
  _$CharacterLocationResponseCopyWithImpl(this._self, this._then);

  final CharacterLocationResponse _self;
  final $Res Function(CharacterLocationResponse) _then;

/// Create a copy of CharacterLocationResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? url = null,}) {
  return _then(CharacterLocationResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterLocationResponse].
extension CharacterLocationResponsePatterns on CharacterLocationResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterLocationResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterLocationResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterLocationResponse value)  $default,){
final _that = this;
switch (_that) {
case _CharacterLocationResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterLocationResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterLocationResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  String url)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterLocationResponse() when $default != null:
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  String url)  $default,) {final _that = this;
switch (_that) {
case _CharacterLocationResponse():
return $default(_that.name,_that.url);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  String url)?  $default,) {final _that = this;
switch (_that) {
case _CharacterLocationResponse() when $default != null:
return $default(_that.name,_that.url);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterLocationResponse implements CharacterLocationResponse {
  const _CharacterLocationResponse({required this.name, required this.url});
  factory _CharacterLocationResponse.fromJson(Map<String, dynamic> json) => _$CharacterLocationResponseFromJson(json);

/// Nombre del lugar.
@override final  String name;
/// URL del recurso en la API.
@override final  String url;

/// Create a copy of CharacterLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterLocationResponseCopyWith<_CharacterLocationResponse> get copyWith => __$CharacterLocationResponseCopyWithImpl<_CharacterLocationResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterLocationResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterLocationResponse&&(identical(other.name, name) || other.name == name)&&(identical(other.url, url) || other.url == url));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,url);
}

@override
String toString() {
    return 'CharacterLocationResponse(name: $name, url: $url)';
}


}

/// @nodoc
abstract mixin class _$CharacterLocationResponseCopyWith<$Res> implements $CharacterLocationResponseCopyWith<$Res> {
  factory _$CharacterLocationResponseCopyWith(_CharacterLocationResponse value, $Res Function(_CharacterLocationResponse) _then) = __$CharacterLocationResponseCopyWithImpl;
@override @useResult
$Res call({
 String name, String url
});




}
/// @nodoc
class __$CharacterLocationResponseCopyWithImpl<$Res>
    implements _$CharacterLocationResponseCopyWith<$Res> {
  __$CharacterLocationResponseCopyWithImpl(this._self, this._then);

  final _CharacterLocationResponse _self;
  final $Res Function(_CharacterLocationResponse) _then;

/// Create a copy of CharacterLocationResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? url = null,}) {
  return _then(_CharacterLocationResponse(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
