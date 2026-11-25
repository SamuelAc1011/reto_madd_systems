import 'package:madd_models/src/core/exceptions/app_exception.dart';

/// Error al consultar personajes.
class CharacterException extends AppException {
  /// Crea un error de personajes.
  const CharacterException({
    required super.message,
    required super.code,
    super.cause,
    super.stackTrace,
  });

  /// La API no encontró coincidencias.
  const CharacterException.notFound()
    : this(message: 'No hay personajes con ese nombre.', code: 'not_found');

  /// No se pudo llegar a la API.
  const CharacterException.unavailable()
    : this(
        message: 'No hay conexión para consultar la API.',
        code: 'unavailable',
      );

  /// Cualquier otro fallo de la consulta.
  const CharacterException.unexpected()
    : this(message: 'No se pudo completar la consulta.', code: 'unexpected');
}
