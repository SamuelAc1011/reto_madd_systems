import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/src/character/data/character_response.dart';

part 'character.freezed.dart';
part 'character.g.dart';

/// Personaje que usa la aplicación y se puede guardar en el dispositivo.
@freezed
abstract class Character with _$Character {
  /// Crea un personaje de dominio.
  const factory Character({
    /// Identificador de la API.
    required int id,

    /// Nombre.
    required String name,

    /// Alive, Dead o unknown.
    required String status,

    /// Especie.
    required String species,

    /// Género.
    required String gender,

    /// URL del retrato.
    required String image,

    /// Nombre del origen.
    required String originName,

    /// Nombre de la última ubicación.
    required String locationName,

    /// URLs de episodios. Sirven para contar apariciones sin otra petición.
    @Default(<String>[]) List<String> episodeUrls,
  }) = _Character;

  const Character._();

  /// Crea el personaje desde el JSON local de hydrated_bloc.
  factory Character.fromJson(Map<String, dynamic> json) =>
      _$CharacterFromJson(json);

  /// Traduce la respuesta de la API al modelo de la aplicación.
  factory Character.fromResponse(CharacterResponse response) {
    return Character(
      id: response.id,
      name: response.name,
      status: response.status,
      species: response.species,
      gender: response.gender,
      image: response.image,
      originName: response.origin.name,
      locationName: response.location.name,
      episodeUrls: response.episode,
    );
  }
}
