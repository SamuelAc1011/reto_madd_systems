import 'package:freezed_annotation/freezed_annotation.dart';

part 'character_search_request.freezed.dart';
part 'character_search_request.g.dart';

/// Consulta de personajes por nombre.
@freezed
abstract class CharacterSearchRequest with _$CharacterSearchRequest {
  /// Crea la consulta que el servicio envía como query string.
  const factory CharacterSearchRequest({
    /// Nombre o fragmento que se busca.
    required String name,

    /// Página de la API. Empieza en 1.
    @Default(1) int page,
  }) = _CharacterSearchRequest;

  /// Crea la petición desde JSON.
  factory CharacterSearchRequest.fromJson(Map<String, dynamic> json) =>
      _$CharacterSearchRequestFromJson(json);
}
