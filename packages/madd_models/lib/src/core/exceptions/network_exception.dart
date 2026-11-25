import 'package:madd_models/src/core/exceptions/app_exception.dart';

/// Fallo de red o de una respuesta HTTP.
class NetworkException extends AppException {
  /// Crea un fallo de red.
  const NetworkException({
    required super.message,
    super.code,
    super.cause,
    super.stackTrace,
    this.statusCode,
  });

  /// El servidor respondió sin cuerpo.
  factory NetworkException.nullData() {
    return const NetworkException(
      message: 'La respuesta no trae datos.',
      code: 'null_data',
    );
  }

  /// La petición excedió el tiempo de espera.
  factory NetworkException.timeout() {
    return const NetworkException(
      message: 'La consulta tardó demasiado.',
      code: 'network_timeout',
    );
  }

  /// No hay conexión con el servidor.
  factory NetworkException.noConnection() {
    return const NetworkException(
      message: 'No hay conexión.',
      code: 'no_connection',
    );
  }

  /// Código HTTP, cuando la respuesta llegó.
  final int? statusCode;
}
