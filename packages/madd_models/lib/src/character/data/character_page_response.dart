import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/src/character/data/character_response.dart';
import 'package:madd_models/src/character/data/page_info_response.dart';

part 'character_page_response.freezed.dart';
part 'character_page_response.g.dart';

/// Página de personajes devuelta por la API.
@freezed
abstract class CharacterPageResponse with _$CharacterPageResponse {
  /// Crea la página.
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory CharacterPageResponse({
    /// Conteo y enlaces de paginación.
    required PageInfoResponse info,

    /// Personajes de esta página.
    required List<CharacterResponse> results,
  }) = _CharacterPageResponse;

  /// Crea la página desde JSON.
  factory CharacterPageResponse.fromJson(Map<String, dynamic> json) =>
      _$CharacterPageResponseFromJson(json);
}
