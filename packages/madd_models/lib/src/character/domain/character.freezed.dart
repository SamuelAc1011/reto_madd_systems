// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'character.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$Character {

/// Identificador de la API.
 int get id;/// Nombre.
 String get name;/// Alive, Dead o unknown.
 String get status;/// Especie.
 String get species;/// Género.
 String get gender;/// URL del retrato.
 String get image;/// Nombre del origen.
 String get originName;/// Nombre de la última ubicación.
 String get locationName;/// URLs de episodios. Sirven para contar apariciones sin otra petición.
 List<String> get episodeUrls;
/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CharacterCopyWith<Character> get copyWith => _$CharacterCopyWithImpl<Character>(this as Character, _$identity);

  /// Serializes this Character to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as Character;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Character&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.species, _this.species) || other.species == _this.species)&&(identical(other.gender, _this.gender) || other.gender == _this.gender)&&(identical(other.image, _this.image) || other.image == _this.image)&&(identical(other.originName, _this.originName) || other.originName == _this.originName)&&(identical(other.locationName, _this.locationName) || other.locationName == _this.locationName)&&const DeepCollectionEquality().equals(other.episodeUrls, _this.episodeUrls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as Character;
  return Object.hash(runtimeType,_this.id,_this.name,_this.status,_this.species,_this.gender,_this.image,_this.originName,_this.locationName,const DeepCollectionEquality().hash(_this.episodeUrls));
}

@override
String toString() {
  final _this = this as Character;
  return 'Character(id: ${_this.id}, name: ${_this.name}, status: ${_this.status}, species: ${_this.species}, gender: ${_this.gender}, image: ${_this.image}, originName: ${_this.originName}, locationName: ${_this.locationName}, episodeUrls: ${_this.episodeUrls})';
}


}

/// @nodoc
abstract mixin class $CharacterCopyWith<$Res>  {
  factory $CharacterCopyWith(Character value, $Res Function(Character) _then) = _$CharacterCopyWithImpl;
@useResult
$Res call({
 int id, String name, String status, String species, String gender, String image, String originName, String locationName, List<String> episodeUrls
});




}
/// @nodoc
class _$CharacterCopyWithImpl<$Res>
    implements $CharacterCopyWith<$Res> {
  _$CharacterCopyWithImpl(this._self, this._then);

  final Character _self;
  final $Res Function(Character) _then;

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? gender = null,Object? image = null,Object? originName = null,Object? locationName = null,Object? episodeUrls = null,}) {
  return _then(Character(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,originName: null == originName ? _self.originName : originName // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,episodeUrls: null == episodeUrls ? _self.episodeUrls : episodeUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}

}


/// Adds pattern-matching-related methods to [Character].
extension CharacterPatterns on Character {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _Character value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Character() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _Character value)  $default,){
final _that = this;
switch (_that) {
case _Character():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _Character value)?  $default,){
final _that = this;
switch (_that) {
case _Character() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String gender,  String image,  String originName,  String locationName,  List<String> episodeUrls)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Character() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.gender,_that.image,_that.originName,_that.locationName,_that.episodeUrls);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int id,  String name,  String status,  String species,  String gender,  String image,  String originName,  String locationName,  List<String> episodeUrls)  $default,) {final _that = this;
switch (_that) {
case _Character():
return $default(_that.id,_that.name,_that.status,_that.species,_that.gender,_that.image,_that.originName,_that.locationName,_that.episodeUrls);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int id,  String name,  String status,  String species,  String gender,  String image,  String originName,  String locationName,  List<String> episodeUrls)?  $default,) {final _that = this;
switch (_that) {
case _Character() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.species,_that.gender,_that.image,_that.originName,_that.locationName,_that.episodeUrls);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _Character extends Character {
  const _Character({required this.id, required this.name, required this.status, required this.species, required this.gender, required this.image, required this.originName, required this.locationName,  List<String> episodeUrls = const <String>[]}): _episodeUrls = episodeUrls,super._();
  factory _Character.fromJson(Map<String, dynamic> json) => _$CharacterFromJson(json);

/// Identificador de la API.
@override final  int id;
/// Nombre.
@override final  String name;
/// Alive, Dead o unknown.
@override final  String status;
/// Especie.
@override final  String species;
/// Género.
@override final  String gender;
/// URL del retrato.
@override final  String image;
/// Nombre del origen.
@override final  String originName;
/// Nombre de la última ubicación.
@override final  String locationName;
/// URLs de episodios. Sirven para contar apariciones sin otra petición.
 final  List<String> _episodeUrls;
/// URLs de episodios. Sirven para contar apariciones sin otra petición.
@override@JsonKey() List<String> get episodeUrls {
  if (_episodeUrls is EqualUnmodifiableListView) return _episodeUrls;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_episodeUrls);
}


/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$CharacterCopyWith<_Character> get copyWith => __$CharacterCopyWithImpl<_Character>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$CharacterToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _Character&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.species, species) || other.species == species)&&(identical(other.gender, gender) || other.gender == gender)&&(identical(other.image, image) || other.image == image)&&(identical(other.originName, originName) || other.originName == originName)&&(identical(other.locationName, locationName) || other.locationName == locationName)&&const DeepCollectionEquality().equals(other.episodeUrls, _episodeUrls));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,status,species,gender,image,originName,locationName,const DeepCollectionEquality().hash(_episodeUrls));
}

@override
String toString() {
    return 'Character(id: $id, name: $name, status: $status, species: $species, gender: $gender, image: $image, originName: $originName, locationName: $locationName, episodeUrls: $episodeUrls)';
}


}

/// @nodoc
abstract mixin class _$CharacterCopyWith<$Res> implements $CharacterCopyWith<$Res> {
  factory _$CharacterCopyWith(_Character value, $Res Function(_Character) _then) = __$CharacterCopyWithImpl;
@override @useResult
$Res call({
 int id, String name, String status, String species, String gender, String image, String originName, String locationName, List<String> episodeUrls
});




}
/// @nodoc
class __$CharacterCopyWithImpl<$Res>
    implements _$CharacterCopyWith<$Res> {
  __$CharacterCopyWithImpl(this._self, this._then);

  final _Character _self;
  final $Res Function(_Character) _then;

/// Create a copy of Character
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? species = null,Object? gender = null,Object? image = null,Object? originName = null,Object? locationName = null,Object? episodeUrls = null,}) {
  return _then(_Character(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as int,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,species: null == species ? _self.species : species // ignore: cast_nullable_to_non_nullable
as String,gender: null == gender ? _self.gender : gender // ignore: cast_nullable_to_non_nullable
as String,image: null == image ? _self.image : image // ignore: cast_nullable_to_non_nullable
as String,originName: null == originName ? _self.originName : originName // ignore: cast_nullable_to_non_nullable
as String,locationName: null == locationName ? _self.locationName : locationName // ignore: cast_nullable_to_non_nullable
as String,episodeUrls: null == episodeUrls ? _self._episodeUrls : episodeUrls // ignore: cast_nullable_to_non_nullable
as List<String>,
  ));
}


}

// dart format on
