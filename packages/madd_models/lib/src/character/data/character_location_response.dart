import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_location_response.freezed.dart';
part 'character_location_response.g.dart';

/// Origen o ubicación tal como llega en el personaje.
@freezed
abstract class CharacterLocationResponse with _$CharacterLocationResponse {
  /// Crea la referencia de un lugar.
  const factory CharacterLocationResponse({
    /// Nombre del lugar.
    required String name,

    /// URL del recurso en la API.
    required String url,
  }) = _CharacterLocationResponse;

  /// Crea la referencia desde JSON.
  factory CharacterLocationResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterLocationResponseFromJson(json);
}
