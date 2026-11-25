/// Eventos de la sesión del investigador.
sealed class SessionEvent {
  /// Crea un evento de sesión.
  const SessionEvent();
}

/// El código coincidió y el celular queda como espacio activo.
final class SessionSignedIn extends SessionEvent {
  /// Crea el evento con el celular ya normalizado.
  const SessionSignedIn(this.phone);

  /// Celular de 10 dígitos.
  final String phone;
}

/// Cierra el espacio activo sin borrar lo que ese celular guardó.
final class SessionSignedOut extends SessionEvent {
  /// Crea el evento.
  const SessionSignedOut();
}

/// Guarda la última búsqueda de este celular.
final class SessionQueryRemembered extends SessionEvent {
  /// Crea el evento con el texto buscado.
  const SessionQueryRemembered(this.query);

  /// Texto de la búsqueda.
  final String query;
}
