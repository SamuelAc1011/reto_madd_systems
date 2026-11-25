// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'library_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_LibraryState _$LibraryStateFromJson(Map<String, dynamic> json) =>
    _LibraryState(
      charactersByPhone:
          (json['charactersByPhone'] as Map<String, dynamic>?)?.map(
            (k, e) => MapEntry(
              k,
              (e as List<dynamic>)
                  .map((e) => Character.fromJson(e as Map<String, dynamic>))
                  .toList(),
            ),
          ) ??
          const <String, List<Character>>{},
    );

Map<String, dynamic> _$LibraryStateToJson(_LibraryState instance) =>
    <String, dynamic>{
      'charactersByPhone': instance.charactersByPhone.map(
        (k, e) => MapEntry(k, e.map((e) => e.toJson()).toList()),
      ),
    };
