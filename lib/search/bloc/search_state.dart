import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/madd_models.dart';
import 'package:reto_madd_systems/search/formz/search_query_input.dart';

part 'search_state.freezed.dart';

/// Estado visible de la búsqueda.
enum SearchStatus {
  /// Todavía no hay una consulta.
  initial,

  /// La primera página está en camino.
  loading,

  /// Se está pidiendo otra página.
  loadingMore,

  /// Hay resultados.
  success,

  /// La API no encontró coincidencias.
  empty,

  /// La consulta no se pudo completar.
  failure,
}

/// Resultado de buscar personajes.
@freezed
abstract class SearchState with _$SearchState {
  /// Crea el estado.
  const factory SearchState({
    /// Texto del campo, con su validación.
    @Default(SearchQueryInput.pure()) SearchQueryInput input,

    /// Fase de la consulta.
    @Default(SearchStatus.initial) SearchStatus status,

    /// Personajes acumulados.
    @Default(<Character>[]) List<Character> characters,

    /// Última página recibida.
    @Default(1) int page,

    /// La API tiene otra página.
    @Default(false) bool hasNext,

    /// Texto de la última consulta enviada.
    @Default('') String query,

    /// Código de [CharacterException], cuando falla.
    String? errorCode,
  }) = _SearchState;
}
