/// Eventos de búsqueda.
sealed class SearchEvent {
  /// Crea un evento.
  const SearchEvent();
}

/// Actualiza el nombre antes de buscar.
final class SearchQueryChanged extends SearchEvent {
  /// Crea el evento.
  const SearchQueryChanged(this.value);

  /// Texto del campo.
  final String value;
}

/// Lanza una búsqueda con el texto ya capturado.
final class SearchSubmitted extends SearchEvent {
  /// Crea el evento.
  const SearchSubmitted();
}

/// Pide la siguiente página de la misma búsqueda.
final class SearchNextPageRequested extends SearchEvent {
  /// Crea el evento.
  const SearchNextPageRequested();
}
