// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$CharacterResponse {

/// Identificador de la API.
 int get id;/// Nombre.
 String get name;/// Alive, Dead o unknown.
 String get status;/// Especie.
 String get species;/// Subtipo. Puede venir vacío.
 String get type;/// Género.
 String get gender;/// Lugar de origen.
 CharacterLocationResponse get origin;/// Última ubicación conocida.
 CharacterLocationResponse get location;/// URL del retrato.
 String get image;/// URLs de los episodios en los que aparece.
 List<String> get episode;/// URL del recurso.
 String get url;/// Fecha de alta en la API.
 String get created;
/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterResponseCopyWith<CharacterResponse> get copyWith => _$CharacterResponseCopyWithImpl<CharacterResponse>(this as CharacterResponse, _$identity);

  /// Serializes this CharacterResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as CharacterResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CharacterResponse&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.species, _this.species) || other.species == _this.species)&&(identical(other.type, _this.type) || other.type == _this.type)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.origin, _this.origin) || other.origin == _this.origin)&&(identical(other.location, _this.location) || other.location == _this.location)&&(identical(other.image, _this.image) || other.image == _this.image)&&const DeepCollectionEquality().equals(other.episode, _this.episode)&&(identical(other.url, _this.url) || other.url == _this.url)&&(identical(other.created, _this.created) || other.created == _this.created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as CharacterResponse;
  return Object.hash(runtimeType,_this.id,_this.name,_this.status,_this.species,_this.type,_this.gender,_this.origin,_this.location,_this.image,const DeepCollectionEquality().hash(_this.episode),_this.url,_this.created);
}

@override
String toString() {
  final _this = this as CharacterResponse;
  return 'CharacterResponse(id: ${_this.id}, name: ${_this.name}, status: ${_this.status}, species: ${_this.species}, type: ${_this.type}, gender: ${_this.gender}, origin: ${_this.origin}, location: ${_this.location}, image: ${_this.image}, episode: ${_this.episode}, url: ${_this.url}, created: ${_this.created})';
}


}

/// @nodoc
abstract mixin class $CharacterResponseCopyWith<$Res>  {
  factory $CharacterResponseCopyWith(CharacterResponse value, $Res Function(CharacterResponse) _then) = _$CharacterResponseCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, CharacterLocationResponse origin, CharacterLocationResponse location, String image, List<String> episode, String url, String created
});


$CharacterLocationResponseCopyWith<$Res> get origin;$CharacterLocationResponseCopyWith<$Res> get location;

}
/// @nodoc
class _$CharacterResponseCopyWithImpl<$Res>
    implements $CharacterResponseCopyWith<$Res> {
  _$CharacterResponseCopyWithImpl(this._self, this._then);

  final CharacterResponse _self;
  final $Res Function(CharacterResponse) _then;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? origin = null,Object? location = null,Object? image = null,Object? episode = null,Object? url = null,Object? created = null,}) {
  return _then(CharacterResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as CharacterLocationResponse,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as CharacterLocationResponse,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self.episode : episode // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,
  ));
}
/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationResponseCopyWith<$Res> get origin {
  
  return $CharacterLocationResponseCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationResponseCopyWith<$Res> get location {
  
  return $CharacterLocationResponseCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}


/// Adds pattern-matching-related methods to [CharacterResponse].
extension CharacterResponsePatterns on CharacterResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _CharacterResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _CharacterResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _CharacterResponse value)  $default,){
final _that = this;
switch (_that) {
case _CharacterResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _CharacterResponse value)?  $default,){
final _that = this;
switch (_that) {
case _CharacterResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String type,  String gender,  CharacterLocationResponse origin,  CharacterLocationResponse location,  String image,  List<String> episode,  String url,  String created)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _CharacterResponse() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String type,  String gender,  CharacterLocationResponse origin,  CharacterLocationResponse location,  String image,  List<String> episode,  String url,  String created)  $default,) {final _that = this;
switch (_that) {
case _CharacterResponse():
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status,  String species,  String type,  String gender,  CharacterLocationResponse origin,  CharacterLocationResponse location,  String image,  List<String> episode,  String url,  String created)?  $default,) {final _that = this;
switch (_that) {
case _CharacterResponse() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.type,_that.gender,_that.origin,_that.location,_that.image,_that.episode,_that.url,_that.created);case _:
  return null;

}
}

}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _CharacterResponse implements CharacterResponse {
  const _CharacterResponse({required this.id, required this.name, required this.status, required this.species, required this.type, required this.gender, required this.origin, required this.location, required this.image, required  List<String> episode, required this.url, required this.created}): _episode = episode;
  factory _CharacterResponse.fromJson(Map<String, dynamic> json) => _$CharacterResponseFromJson(json);

/// Identificador de la API.
@override final  int id;
/// Nombre.
@override final  String name;
/// Alive, Dead o unknown.
@override final  String status;
/// Especie.
@override final  String species;
/// Subtipo. Puede venir vacío.
@override final  String type;
/// Género.
@override final  String gender;
/// Lugar de origen.
@override final  CharacterLocationResponse origin;
/// Última ubicación conocida.
@override final  CharacterLocationResponse location;
/// URL del retrato.
@override final  String image;
/// URLs de los episodios en los que aparece.
 final  List<String> _episode;
/// URLs de los episodios en los que aparece.
@override List<String> get episode {
  if (_episode is EqualUnmodifiableListView) return _episode;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episode);
}

/// URL del recurso.
@override final  String url;
/// Fecha de alta en la API.
@override final  String created;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterResponseCopyWith<_CharacterResponse> get copyWith => __$CharacterResponseCopyWithImpl<_CharacterResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _CharacterResponse&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.type, type) || other.type == type)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.origin, origin) || other.origin == origin)&&(identical(other.location, location) || other.location == location)&&(identical(other.image, image) || other.image == image)&&const DeepCollectionEquality().equals(other.episode, _episode)&&(identical(other.url, url) || other.url == url)&&(identical(other.created, created) || other.created == created));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,status,species,type,gender,origin,location,image,const DeepCollectionEquality().hash(_episode),url,created);
}

@override
String toString() {
    return 'CharacterResponse(id: $id, name: $name, status: $status, species: $species, type: $type, gender: $gender, origin: $origin, location: $location, image: $image, episode: $episode, url: $url, created: $created)';
}


}

/// @nodoc
abstract mixin class _$CharacterResponseCopyWith<$Res> implements $CharacterResponseCopyWith<$Res> {
  factory _$CharacterResponseCopyWith(_CharacterResponse value, $Res Function(_CharacterResponse) _then) = __$CharacterResponseCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status, String species, String type, String gender, CharacterLocationResponse origin, CharacterLocationResponse location, String image, List<String> episode, String url, String created
});


@override $CharacterLocationResponseCopyWith<$Res> get origin;@override $CharacterLocationResponseCopyWith<$Res> get location;

}
/// @nodoc
class __$CharacterResponseCopyWithImpl<$Res>
    implements _$CharacterResponseCopyWith<$Res> {
  __$CharacterResponseCopyWithImpl(this._self, this._then);

  final _CharacterResponse _self;
  final $Res Function(_CharacterResponse) _then;

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? type = null,Object? gender = null,Object? origin = null,Object? location = null,Object? image = null,Object? episode = null,Object? url = null,Object? created = null,}) {
  return _then(_CharacterResponse(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,type: null == type ? _self.type : type // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,origin: null == origin ? _self.origin : origin // ignore: cast_nullable_to_non_nullable
as CharacterLocationResponse,location: null == location ? _self.location : location // ignore: cast_nullable_to_non_nullable
as CharacterLocationResponse,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,episode: null == episode ? _self._episode : episode // ignore: cast_nullable_to_non_nullable
as List<String>,url: null == url ? _self.url : url // ignore: cast_nullable_to_non_nullable
as String,created: null == created ? _self.created : created // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationResponseCopyWith<$Res> get origin {
  
  return $CharacterLocationResponseCopyWith<$Res>(_self.origin, (value) {
    return _then(_self.copyWith(origin: value));
  });
}/// Create a copy of CharacterResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$CharacterLocationResponseCopyWith<$Res> get location {
  
  return $CharacterLocationResponseCopyWith<$Res>(_self.location, (value) {
    return _then(_self.copyWith(location: value));
  });
}
}

// dart format on
