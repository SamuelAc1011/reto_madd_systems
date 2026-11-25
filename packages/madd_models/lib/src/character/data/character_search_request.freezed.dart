// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_search_request.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterSearchRequest {

/// Nombre o fragmento que se busca.
 String get name;/// Página de la API. Empieza en 1.
 int get page;
/// Create a copy of CharacterSearchRequest
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterSearchRequestCopyWith<CharacterSearchRequest> get copyWith => _$CharacterSearchRequestCopyWithImpl<CharacterSearchRequest>(this as CharacterSearchRequest, _$identity);

  /// Serializes this CharacterSearchRequest to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CharacterSearchRequest;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterSearchRequest&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.page, _this.page) || other.page == _this.page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CharacterSearchRequest;
  return Object.hash(runtimeType,_this.name,_this.page);
}

@override
String toString() {
  final _this = this as CharacterSearchRequest;
  return 'CharacterSearchRequest(name: ${_this.name}, page: ${_this.page})';
}


}

/// @nodoc
abstract mixin class $CharacterSearchRequestCopyWith<$Res>  {
  factory $CharacterSearchRequestCopyWith(CharacterSearchRequest value, $Res Function(CharacterSearchRequest) _then) = _$CharacterSearchRequestCopyWithImpl;
@useResult
$Res call({
 String name, int page
});




}
/// @nodoc
class _$CharacterSearchRequestCopyWithImpl<$Res>
    implements $CharacterSearchRequestCopyWith<$Res> {
  _$CharacterSearchRequestCopyWithImpl(this._self, this._then);

  final CharacterSearchRequest _self;
  final $Res Function(CharacterSearchRequest) _then;

/// Create a copy of CharacterSearchRequest
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? name = null,Object? page = null,}) {
  return _then(CharacterSearchRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterSearchRequest].
extension CharacterSearchRequestPatterns on CharacterSearchRequest {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterSearchRequest value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterSearchRequest() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterSearchRequest value)  $default,){
final _that = this;
switch (_that) {
case _CharacterSearchRequest():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterSearchRequest value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterSearchRequest() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String name,  int page)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterSearchRequest() when $default != null:
return $default(_that.name,_that.page);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String name,  int page)  $default,) {final _that = this;
switch (_that) {
case _CharacterSearchRequest():
return $default(_that.name,_that.page);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String name,  int page)?  $default,) {final _that = this;
switch (_that) {
case _CharacterSearchRequest() when $default != null:
return $default(_that.name,_that.page);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _CharacterSearchRequest implements CharacterSearchRequest {
  const _CharacterSearchRequest({required this.name, this.page = 1});
  factory _CharacterSearchRequest.fromJson(Map<String, dynamic> json) => _$CharacterSearchRequestFromJson(json);

/// Nombre o fragmento que se busca.
@override final  String name;
/// Página de la API. Empieza en 1.
@override@JsonKey() final  int page;

/// Create a copy of CharacterSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterSearchRequestCopyWith<_CharacterSearchRequest> get copyWith => __$CharacterSearchRequestCopyWithImpl<_CharacterSearchRequest>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterSearchRequestToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterSearchRequest&&(identical(other.name, name) || other.name == name)&&(identical(other.page, page) || other.page == page));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,name,page);
}

@override
String toString() {
    return 'CharacterSearchRequest(name: $name, page: $page)';
}


}

/// @nodoc
abstract mixin class _$CharacterSearchRequestCopyWith<$Res> implements $CharacterSearchRequestCopyWith<$Res> {
  factory _$CharacterSearchRequestCopyWith(_CharacterSearchRequest value, $Res Function(_CharacterSearchRequest) _then) = __$CharacterSearchRequestCopyWithImpl;
@override @useResult
$Res call({
 String name, int page
});




}
/// @nodoc
class __$CharacterSearchRequestCopyWithImpl<$Res>
    implements _$CharacterSearchRequestCopyWith<$Res> {
  __$CharacterSearchRequestCopyWithImpl(this._self, this._then);

  final _CharacterSearchRequest _self;
  final $Res Function(_CharacterSearchRequest) _then;

/// Create a copy of CharacterSearchRequest
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? name = null,Object? page = null,}) {
  return _then(_CharacterSearchRequest(
name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
