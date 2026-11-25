/// Error controlado de la aplicación.
class AppException implements Exception {
  /// Crea un error con un mensaje que se puede mostrar o traducir.
  const AppException({
    required this.message,
    this.code,
    this.cause,
    this.stackTrace,
  });

  /// Descripción del error.
  final String message;

  /// Código estable para que la interfaz elija el texto.
  final String? code;

  /// Causa original, si existe.
  final Object? cause;

  /// Traza asociada.
  final StackTrace? stackTrace;

  @override
  String toString() {
    final buffer = StringBuffer('AppException: $message');
    if (code != null) buffer.write(' ($code)');
    return buffer.toString();
  }
}
