// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchState {

/// Texto del campo, con su validación.
 SearchQueryInput get input;/// Fase de la consulta.
 SearchStatus get status;/// Personajes acumulados.
 List<Character> get characters;/// Última página recibida.
 int get page;/// La API tiene otra página.
 bool get hasNext;/// Texto de la última consulta enviada.
 String get query;/// Código de [CharacterException], cuando falla.
 String? get errorCode;
/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchStateCopyWith<SearchState> get copyWith => _$SearchStateCopyWithImpl<SearchState>(this as SearchState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchState&&(identical(other.input, _this.input) || other.input == _this.input)&&(identical(other.status, _this.status) || other.status == _this.status)&&const DeepCollectionEquality().equals(other.characters, _this.characters)&&(identical(other.page, _this.page) || other.page == _this.page)&&(identical(other.hasNext, _this.hasNext) || other.hasNext == _this.hasNext)&&(identical(other.query, _this.query) || other.query == _this.query)&&(identical(other.errorCode, _this.errorCode) || other.errorCode == _this.errorCode));
}


@override
int get hashCode {
  final _this = this as SearchState;
  return Object.hash(runtimeType,_this.input,_this.status,const DeepCollectionEquality().hash(_this.characters),_this.page,_this.hasNext,_this.query,_this.errorCode);
}

@override
String toString() {
  final _this = this as SearchState;
  return 'SearchState(input: ${_this.input}, status: ${_this.status}, characters: ${_this.characters}, page: ${_this.page}, hasNext: ${_this.hasNext}, query: ${_this.query}, errorCode: ${_this.errorCode})';
}


}

/// @nodoc
abstract mixin class $SearchStateCopyWith<$Res>  {
  factory $SearchStateCopyWith(SearchState value, $Res Function(SearchState) _then) = _$SearchStateCopyWithImpl;
@useResult
$Res call({
 SearchQueryInput input, SearchStatus status, List<Character> characters, int page, bool hasNext, String query, String? errorCode
});




}
/// @nodoc
class _$SearchStateCopyWithImpl<$Res>
    implements $SearchStateCopyWith<$Res> {
  _$SearchStateCopyWithImpl(this._self, this._then);

  final SearchState _self;
  final $Res Function(SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? input = null,Object? status = null,Object? characters = null,Object? page = null,Object? hasNext = null,Object? query = null,Object? errorCode = freezed,}) {
  return _then(SearchState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as SearchQueryInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,characters: null == characters ? _self.characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchState].
extension SearchStatePatterns on SearchState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchState value)  $default,){
final _that = this;
switch (_that) {
case _SearchState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchState value)?  $default,){
final _that = this;
switch (_that) {
case _SearchState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SearchQueryInput input,  SearchStatus status,  List<Character> characters,  int page,  bool hasNext,  String query,  String? errorCode)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.input,_that.status,_that.characters,_that.page,_that.hasNext,_that.query,_that.errorCode);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SearchQueryInput input,  SearchStatus status,  List<Character> characters,  int page,  bool hasNext,  String query,  String? errorCode)  $default,) {final _that = this;
switch (_that) {
case _SearchState():
return $default(_that.input,_that.status,_that.characters,_that.page,_that.hasNext,_that.query,_that.errorCode);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SearchQueryInput input,  SearchStatus status,  List<Character> characters,  int page,  bool hasNext,  String query,  String? errorCode)?  $default,) {final _that = this;
switch (_that) {
case _SearchState() when $default != null:
return $default(_that.input,_that.status,_that.characters,_that.page,_that.hasNext,_that.query,_that.errorCode);case _:
  return null;

}
}

}

/// @nodoc


class _SearchState implements SearchState {
  const _SearchState({this.input = const SearchQueryInput.pure(), this.status = SearchStatus.initial,  List<Character> characters = const <Character>[], this.page = 1, this.hasNext = false, this.query = '', this.errorCode}): _characters = characters;
  

/// Texto del campo, con su validación.
@override@JsonKey() final  SearchQueryInput input;
/// Fase de la consulta.
@override@JsonKey() final  SearchStatus status;
/// Personajes acumulados.
 final  List<Character> _characters;
/// Personajes acumulados.
@override@JsonKey() List<Character> get characters {
  if (_characters is EqualUnmodifiableListView) return _characters;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_characters);
}

/// Última página recibida.
@override@JsonKey() final  int page;
/// La API tiene otra página.
@override@JsonKey() final  bool hasNext;
/// Texto de la última consulta enviada.
@override@JsonKey() final  String query;
/// Código de [CharacterException], cuando falla.
@override final  String? errorCode;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchStateCopyWith<_SearchState> get copyWith => __$SearchStateCopyWithImpl<_SearchState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchState&&(identical(other.input, input) || other.input == input)&&(identical(other.status, status) || other.status == status)&&const DeepCollectionEquality().equals(other.characters, _characters)&&(identical(other.page, page) || other.page == page)&&(identical(other.hasNext, hasNext) || other.hasNext == hasNext)&&(identical(other.query, query) || other.query == query)&&(identical(other.errorCode, errorCode) || other.errorCode == errorCode));
}


@override
int get hashCode {
    return Object.hash(runtimeType,input,status,const DeepCollectionEquality().hash(_characters),page,hasNext,query,errorCode);
}

@override
String toString() {
    return 'SearchState(input: $input, status: $status, characters: $characters, page: $page, hasNext: $hasNext, query: $query, errorCode: $errorCode)';
}


}

/// @nodoc
abstract mixin class _$SearchStateCopyWith<$Res> implements $SearchStateCopyWith<$Res> {
  factory _$SearchStateCopyWith(_SearchState value, $Res Function(_SearchState) _then) = __$SearchStateCopyWithImpl;
@override @useResult
$Res call({
 SearchQueryInput input, SearchStatus status, List<Character> characters, int page, bool hasNext, String query, String? errorCode
});




}
/// @nodoc
class __$SearchStateCopyWithImpl<$Res>
    implements _$SearchStateCopyWith<$Res> {
  __$SearchStateCopyWithImpl(this._self, this._then);

  final _SearchState _self;
  final $Res Function(_SearchState) _then;

/// Create a copy of SearchState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? input = null,Object? status = null,Object? characters = null,Object? page = null,Object? hasNext = null,Object? query = null,Object? errorCode = freezed,}) {
  return _then(_SearchState(
input: null == input ? _self.input : input // ignore: cast_nullable_to_non_nullable
as SearchQueryInput,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as SearchStatus,characters: null == characters ? _self._characters : characters // ignore: cast_nullable_to_non_nullable
as List<Character>,page: null == page ? _self.page : page // ignore: cast_nullable_to_non_nullable
as int,hasNext: null == hasNext ? _self.hasNext : hasNext // ignore: cast_nullable_to_non_nullable
as bool,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,errorCode: freezed == errorCode ? _self.errorCode : errorCode // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
