/// Respuesta HTTP ya leída.
class ApiResponse<T> {
  /// Crea una respuesta con su cuerpo y su código.
  const ApiResponse({required this.data, required this.statusCode});

  /// Cuerpo de la respuesta.
  final T data;

  /// Código HTTP.
  final int statusCode;

  /// Verdadero cuando el código está entre 200 y 299.
  bool get isSuccessful => statusCode >= 200 && statusCode < 300;
}
