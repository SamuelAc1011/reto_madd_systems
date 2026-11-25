import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/src/character/data/character_location_response.dart';

part 'character_response.freezed.dart';
part 'character_response.g.dart';

/// Personaje tal como lo devuelve la API.
@freezed
abstract class CharacterResponse with _$CharacterResponse {
  /// Crea la respuesta de un personaje.
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CharacterResponse({
    /// Identificador de la API.
    required int id,

    /// Nombre.
    required String name,

    /// Alive, Dead o unknown.
    required String status,

    /// Especie.
    required String species,

    /// Subtipo. Puede venir vacío.
    required String type,

    /// Género.
    required String gender,

    /// Lugar de origen.
    required CharacterLocationResponse origin,

    /// Última ubicación conocida.
    required CharacterLocationResponse location,

    /// URL del retrato.
    required String image,

    /// URLs de los episodios en los que aparece.
    required List<String> episode,

    /// URL del recurso.
    required String url,

    /// Fecha de alta en la API.
    required String created,
  }) = _CharacterResponse;

  /// Crea la respuesta desde JSON.
  factory CharacterResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterResponseFromJson(json);
}
