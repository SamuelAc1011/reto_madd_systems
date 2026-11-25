import 'package:madd_models/madd_models.dart';

/// Eventos de la biblioteca local.
sealed class LibraryEvent {
  /// Crea un evento.
  const LibraryEvent();
}

/// Agrega o quita un personaje del celular activo.
final class LibraryCharacterToggled extends LibraryEvent {
  /// Crea el evento.
  const LibraryCharacterToggled({required this.phone, required this.character});

  /// Celular dueño del registro.
  final String phone;

  /// Personaje a guardar o quitar.
  final Character character;
}
