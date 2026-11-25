import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/src/character/data/character_page_response.dart';
import 'package:madd_models/src/character/domain/character.dart';

part 'character_page.freezed.dart';

/// Página de personajes ya traducida al dominio.
@freezed
abstract class CharacterPage with _$CharacterPage {
  /// Crea una página de dominio.
  const factory CharacterPage({
    /// Total de coincidencias.
    required int count,

    /// Total de páginas.
    required int pages,

    /// Número de esta página.
    required int page,

    /// Hay otra página después de esta.
    required bool hasNext,

    /// Personajes de esta página.
    required List<Character> characters,
  }) = _CharacterPage;

  /// Traduce la respuesta de la API.
  factory CharacterPage.fromResponse(
    CharacterPageResponse response, {
    required int page,
  }) {
    return CharacterPage(
      count: response.info.count,
      pages: response.info.pages,
      page: page,
      hasNext: response.info.next != null,
      characters: [
        for (final item in response.results) Character.fromResponse(item),
      ],
    );
  }
}
