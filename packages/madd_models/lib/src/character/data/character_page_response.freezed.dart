// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_page_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterPageResponse {

/// Conteo y enlaces de paginación.
 PageInfoResponse get info;/// Personajes de esta página.
 List<CharacterResponse> get results;
/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPageResponseCopyWith<CharacterPageResponse> get copyWith => _$CharacterPageResponseCopyWithImpl<CharacterPageResponse>(this as CharacterPageResponse, _$identity);

  /// Serializes this CharacterPageResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CharacterPageResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPageResponse&&(identical(other.info, _this.info) || other.info == _this.info)&&const DeepCollectionEquality().equals(other.results, _this.results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CharacterPageResponse;
  return Object.hash(runtimeType,_this.info,const DeepCollectionEquality().hash(_this.results));
}

@override
String toString() {
  final _this = this as CharacterPageResponse;
  return 'CharacterPageResponse(info: ${_this.info}, results: ${_this.results})';
}


}

/// @nodoc
abstract mixin class $CharacterPageResponseCopyWith<$Res>  {
  factory $CharacterPageResponseCopyWith(CharacterPageResponse value, $Res Function(CharacterPageResponse) _then) = _$CharacterPageResponseCopyWithImpl;
@useResult
$Res call({
 PageInfoResponse info, List<CharacterResponse> results
});


$PageInfoResponseCopyWith<$Res> get info;

}
/// @nodoc
class _$CharacterPageResponseCopyWithImpl<$Res>
    implements $CharacterPageResponseCopyWith<$Res> {
  _$CharacterPageResponseCopyWithImpl(this._self, this._then);

  final CharacterPageResponse _self;
  final $Res Function(CharacterPageResponse) _then;

/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? info = null,Object? results = null,}) {
  return _then(CharacterPageResponse(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PageInfoResponse,results: null == results ? _self.results : results // ignore: cast_nullable_to_non_nullable
as List<CharacterResponse>,
  ));
}
/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageInfoResponseCopyWith<$Res> get info {
  
  return $PageInfoResponseCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterPageResponse].
extension CharacterPageResponsePatterns on CharacterPageResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterPageResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterPageResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterPageResponse value)  $default,){
final _that = this;
switch (_that) {
case _CharacterPageResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterPageResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterPageResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( PageInfoResponse info,  List<CharacterResponse> results)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterPageResponse() when $default != null:
return $default(_that.info,_that.results);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( PageInfoResponse info,  List<CharacterResponse> results)  $default,) {final _that = this;
switch (_that) {
case _CharacterPageResponse():
return $default(_that.info,_that.results);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( PageInfoResponse info,  List<CharacterResponse> results)?  $default,) {final _that = this;
switch (_that) {
case _CharacterPageResponse() when $default != null:
return $default(_that.info,_that.results);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CharacterPageResponse implements CharacterPageResponse {
  const _CharacterPageResponse({required this.info, required  List<CharacterResponse> results}): _results = results;
  factory _CharacterPageResponse.fromJson(Map<String, dynamic> json) => _$CharacterPageResponseFromJson(json);

/// Conteo y enlaces de paginación.
@override final  PageInfoResponse info;
/// Personajes de esta página.
 final  List<CharacterResponse> _results;
/// Personajes de esta página.
@override List<CharacterResponse> get results {
  if (_results is EqualUnmodifiableListView) return _results;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_results);
}


/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPageResponseCopyWith<_CharacterPageResponse> get copyWith => __$CharacterPageResponseCopyWithImpl<_CharacterPageResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterPageResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPageResponse&&(identical(other.info, info) || other.info == info)&&const DeepCollectionEquality().equals(other.results, _results));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,info,const DeepCollectionEquality().hash(_results));
}

@override
String toString() {
    return 'CharacterPageResponse(info: $info, results: $results)';
}


}

/// @nodoc
abstract mixin class _$CharacterPageResponseCopyWith<$Res> implements $CharacterPageResponseCopyWith<$Res> {
  factory _$CharacterPageResponseCopyWith(_CharacterPageResponse value, $Res Function(_CharacterPageResponse) _then) = __$CharacterPageResponseCopyWithImpl;
@override @useResult
$Res call({
 PageInfoResponse info, List<CharacterResponse> results
});


@override $PageInfoResponseCopyWith<$Res> get info;

}
/// @nodoc
class __$CharacterPageResponseCopyWithImpl<$Res>
    implements _$CharacterPageResponseCopyWith<$Res> {
  __$CharacterPageResponseCopyWithImpl(this._self, this._then);

  final _CharacterPageResponse _self;
  final $Res Function(_CharacterPageResponse) _then;

/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? info = null,Object? results = null,}) {
  return _then(_CharacterPageResponse(
info: null == info ? _self.info : info // ignore: cast_nullable_to_non_nullable
as PageInfoResponse,results: null == results ? _self._results : results // ignore: cast_nullable_to_non_nullable
as List<CharacterResponse>,
  ));
}

/// Create a copy of CharacterPageResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$PageInfoResponseCopyWith<$Res> get info {
  
  return $PageInfoResponseCopyWith<$Res>(_self.info, (value) {
    return _then(_self.copyWith(info: value));
  });
}
}

// dart format on
