/// Valores fijos del cliente HTTP.
abstract final class ApiConstants {
  /// API pública de Rick and Morty.
  static const baseUrl = 'https://rickandmortyapi.com/api';

  /// Tiempo máximo para abrir la conexión.
  static const connectTimeout = Duration(seconds: 20);

  /// Tiempo máximo para recibir la respuesta.
  static const receiveTimeout = Duration(seconds: 20);
}
