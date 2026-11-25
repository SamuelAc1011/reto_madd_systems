// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_info_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$PageInfoResponse {

/// Total de coincidencias.
 int get count;/// Total de páginas.
 int get pages;/// URL de la página siguiente, si existe.
 String? get next;/// URL de la página anterior, si existe.
 String? get prev;
/// Create a copy of PageInfoResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageInfoResponseCopyWith<PageInfoResponse> get copyWith => _$PageInfoResponseCopyWithImpl<PageInfoResponse>(this as PageInfoResponse, _$identity);

  /// Serializes this PageInfoResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as PageInfoResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageInfoResponse&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.pages, _this.pages) || other.pages == _this.pages)&&(identical(other.next, _this.next) || other.next == _this.next)&&(identical(other.prev, _this.prev) || other.prev == _this.prev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as PageInfoResponse;
  return Object.hash(runtimeType,_this.count,_this.pages,_this.next,_this.prev);
}

@override
String toString() {
  final _this = this as PageInfoResponse;
  return 'PageInfoResponse(count: ${_this.count}, pages: ${_this.pages}, next: ${_this.next}, prev: ${_this.prev})';
}


}

/// @nodoc
abstract mixin class $PageInfoResponseCopyWith<$Res>  {
  factory $PageInfoResponseCopyWith(PageInfoResponse value, $Res Function(PageInfoResponse) _then) = _$PageInfoResponseCopyWithImpl;
@useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class _$PageInfoResponseCopyWithImpl<$Res>
    implements $PageInfoResponseCopyWith<$Res> {
  _$PageInfoResponseCopyWithImpl(this._self, this._then);

  final PageInfoResponse _self;
  final $Res Function(PageInfoResponse) _then;

/// Create a copy of PageInfoResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(PageInfoResponse(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [PageInfoResponse].
extension PageInfoResponsePatterns on PageInfoResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageInfoResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageInfoResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageInfoResponse value)  $default,){
final _that = this;
switch (_that) {
case _PageInfoResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageInfoResponse value)?  $default,){
final _that = this;
switch (_that) {
case _PageInfoResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageInfoResponse() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int pages,  String? next,  String? prev)  $default,) {final _that = this;
switch (_that) {
case _PageInfoResponse():
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int pages,  String? next,  String? prev)?  $default,) {final _that = this;
switch (_that) {
case _PageInfoResponse() when $default != null:
return $default(_that.count,_that.pages,_that.next,_that.prev);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _PageInfoResponse implements PageInfoResponse {
  const _PageInfoResponse({required this.count, required this.pages, this.next, this.prev});
  factory _PageInfoResponse.fromJson(Map<String, dynamic> json) => _$PageInfoResponseFromJson(json);

/// Total de coincidencias.
@override final  int count;
/// Total de páginas.
@override final  int pages;
/// URL de la página siguiente, si existe.
@override final  String? next;
/// URL de la página anterior, si existe.
@override final  String? prev;

/// Create a copy of PageInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageInfoResponseCopyWith<_PageInfoResponse> get copyWith => __$PageInfoResponseCopyWithImpl<_PageInfoResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$PageInfoResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageInfoResponse&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.next, next) || other.next == next)&&(identical(other.prev, prev) || other.prev == prev));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,count,pages,next,prev);
}

@override
String toString() {
    return 'PageInfoResponse(count: $count, pages: $pages, next: $next, prev: $prev)';
}


}

/// @nodoc
abstract mixin class _$PageInfoResponseCopyWith<$Res> implements $PageInfoResponseCopyWith<$Res> {
  factory _$PageInfoResponseCopyWith(_PageInfoResponse value, $Res Function(_PageInfoResponse) _then) = __$PageInfoResponseCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages, String? next, String? prev
});




}
/// @nodoc
class __$PageInfoResponseCopyWithImpl<$Res>
    implements _$PageInfoResponseCopyWith<$Res> {
  __$PageInfoResponseCopyWithImpl(this._self, this._then);

  final _PageInfoResponse _self;
  final $Res Function(_PageInfoResponse) _then;

/// Create a copy of PageInfoResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,Object? next = freezed,Object? prev = freezed,}) {
  return _then(_PageInfoResponse(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,next: freezed == next ? _self.next : next // ignore: cast_nullable_to_non_nullable
as String?,prev: freezed == prev ? _self.prev : prev // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
