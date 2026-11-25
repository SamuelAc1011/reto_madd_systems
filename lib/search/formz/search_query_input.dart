import 'package:formz/formz.dart';

/// Error de una búsqueda vacía.
enum SearchQueryError {
  /// No hay texto para consultar.
  empty,
}

/// Nombre que se va a buscar.
class SearchQueryInput extends FormzInput<String, SearchQueryError> {
  /// Campo vacío, todavía sin editar.
  const SearchQueryInput.pure() : super.pure('');

  /// Campo editado o restaurado de la sesión.
  const SearchQueryInput.dirty([super.value = '']) : super.dirty();

  @override
  SearchQueryError? validator(String value) {
    return value.trim().isEmpty ? SearchQueryError.empty : null;
  }
}
