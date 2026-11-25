// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_page.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CharacterPage {

/// Total de coincidencias.
 int get count;/// Total de páginas.
 int get pages;/// Número de esta página.
 int get page;/// Hay otra página después de esta.
 bool get hasNext;/// Personajes de esta página.
 List<Character> get characters;
/// Create a copy of CharacterPage
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterPageCopyWith<CharacterPage> get copyWith => _$CharacterPageCopyWithImpl<CharacterPage>(this as CharacterPage, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as CharacterPage;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterPage&&(identical(other.count, _this.count) || other.count == _this.count)&&(identical(other.pages, _this.pages) || other.pages == _this.pages)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.hasNext, _this.hasNext) || other.hasNext == _this.hasNext)&&const DeepCollectionEquality().equals(other.characters, _this.characters));
}


@override
int get hashCode {
  final _this = this as CharacterPage;
  return Object.hash(runtimeType,_this.count,_this.pages,_this.page,_this.hasNext,const DeepCollectionEquality().hash(_this.characters));
}

@override
String toString() {
  final _this = this as CharacterPage;
  return 'CharacterPage(count: ${_this.count}, pages: ${_this.pages}, page: ${_this.page}, hasNext: ${_this.hasNext}, characters: ${_this.characters})';
}


}

/// @nodoc
abstract mixin class $CharacterPageCopyWith<$Res>  {
  factory $CharacterPageCopyWith(CharacterPage value, $Res Function(CharacterPage) _then) = _$CharacterPageCopyWithImpl;
@useResult
$Res call({
 int count, int pages, int page, bool hasNext, List<Character> characters
});




}
/// @nodoc
class _$CharacterPageCopyWithImpl<$Res>
    implements $CharacterPageCopyWith<$Res> {
  _$CharacterPageCopyWithImpl(this._self, this._then);

  final CharacterPage _self;
  final $Res Function(CharacterPage) _then;

/// Create a copy of CharacterPage
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? count = null,Object? pages = null,Object? page = null,Object? hasNext = null,Object? characters = null,}) {
  return _then(CharacterPage(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,
  ));
}

}


/// Adds pattern-matching-related methods to [CharacterPage].
extension CharacterPagePatterns on CharacterPage {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterPage value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterPage() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterPage value)  $default,){
final _that = this;
switch (_that) {
case _CharacterPage():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterPage value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterPage() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int count,  int pages,  int page,  bool hasNext,  List<Character> characters)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterPage() when $default != null:
return $default(_that.count,_that.pages,_that.page,_that.hasNext,_that.characters);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int count,  int pages,  int page,  bool hasNext,  List<Character> characters)  $default,) {final _that = this;
switch (_that) {
case _CharacterPage():
return $default(_that.count,_that.pages,_that.page,_that.hasNext,_that.characters);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int count,  int pages,  int page,  bool hasNext,  List<Character> characters)?  $default,) {final _that = this;
switch (_that) {
case _CharacterPage() when $default != null:
return $default(_that.count,_that.pages,_that.page,_that.hasNext,_that.characters);case _:
  return null;

}
}

}

/// @nodoc


class _CharacterPage implements CharacterPage {
  const _CharacterPage({required this.count, required this.pages, required this.page, required this.hasNext, required  List<Character> characters}): _characters = characters;
  

/// Total de coincidencias.
@override final  int count;
/// Total de páginas.
@override final  int pages;
/// Número de esta página.
@override final  int page;
/// Hay otra página después de esta.
@override final  bool hasNext;
/// Personajes de esta página.
 final  List<Character> _characters;
/// Personajes de esta página.
@override List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}


/// Create a copy of CharacterPage
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterPageCopyWith<_CharacterPage> get copyWith => __$CharacterPageCopyWithImpl<_CharacterPage>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterPage&&(identical(other.count, count) || other.count == count)&&(identical(other.pages, pages) || other.pages == pages)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&const DeepCollectionEquality().equals(other.characters, _characters));
}


@override
int get hashCode {
    return Object.hash(runtimeType,count,pages,page,hasNext,const DeepCollectionEquality().hash(_characters));
}

@override
String toString() {
    return 'CharacterPage(count: $count, pages: $pages, page: $page, hasNext: $hasNext, characters: $characters)';
}


}

/// @nodoc
abstract mixin class _$CharacterPageCopyWith<$Res> implements $CharacterPageCopyWith<$Res> {
  factory _$CharacterPageCopyWith(_CharacterPage value, $Res Function(_CharacterPage) _then) = __$CharacterPageCopyWithImpl;
@override @useResult
$Res call({
 int count, int pages, int page, bool hasNext, List<Character> characters
});




}
/// @nodoc
class __$CharacterPageCopyWithImpl<$Res>
    implements _$CharacterPageCopyWith<$Res> {
  __$CharacterPageCopyWithImpl(this._self, this._then);

  final _CharacterPage _self;
  final $Res Function(_CharacterPage) _then;

/// Create a copy of CharacterPage
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? count = null,Object? pages = null,Object? page = null,Object? hasNext = null,Object? characters = null,}) {
  return _then(_CharacterPage(
count: null == count ? _self.count : count // ignore: cast_nullable_to_non_nullable
as int,pages: null == pages ? _self.pages : pages // ignore: cast_nullable_to_non_nullable
as int,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,
  ));
}


}

// dart format on
