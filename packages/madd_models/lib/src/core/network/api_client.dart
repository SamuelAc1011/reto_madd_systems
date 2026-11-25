import 'package:madd_models/src/core/network/api_response.dart';
import 'package:madd_models/src/core/typedefs/json.dart';

/// Contrato del cliente HTTP.
///
/// El servicio depende de esta interfaz. Dio queda en el paquete de servicio.
abstract interface class ApiClient {
  /// GET.
  Future<ApiResponse<Json>> get(
    String path, {
    Json? queryParameters,
    Json? headers,
  });

  /// POST.
  Future<ApiResponse<Json>> post(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  });

  /// PUT.
  Future<ApiResponse<Json>> put(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  });

  /// PATCH.
  Future<ApiResponse<Json>> patch(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  });

  /// DELETE.
  Future<ApiResponse<Json>> delete(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  });
}
