import 'package:dio/dio.dart';
import 'package:madd_models/madd_models.dart';

/// [ApiClient] implementado con Dio.
class DioApiClient implements ApiClient {
  /// Crea el cliente con un [Dio] ya configurado.
  DioApiClient({required this._dio});

  /// Crea el cliente apuntando a [ApiConstants.baseUrl].
  factory DioApiClient.fromConstants() {
    return DioApiClient(
      dio: Dio(
        BaseOptions(
          baseUrl: ApiConstants.baseUrl,
          connectTimeout: ApiConstants.connectTimeout,
          receiveTimeout: ApiConstants.receiveTimeout,
          validateStatus: (status) => status != null && status < 500,
        ),
      ),
    );
  }

  final Dio _dio;

  Future<ApiResponse<Json>> _request(
    HttpMethod method,
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  }) async {
    late final Response<dynamic> response;
    try {
      response = await _dio.request<dynamic>(
        path,
        data: body,
        queryParameters: queryParameters,
        options: Options(method: method.name.toUpperCase(), headers: headers),
      );
    } on DioException catch (error) {
      throw _fromDio(error);
    }

    final statusCode = response.statusCode ?? 0;
    final data = response.data;
    if (statusCode == 404) {
      throw NetworkException(
        message: _errorMessage(data, statusCode),
        code: 'not_found',
        statusCode: statusCode,
      );
    }
    if (statusCode >= 400) {
      throw NetworkException(
        message: _errorMessage(data, statusCode),
        code: 'http_error',
        statusCode: statusCode,
      );
    }
    if (data is! Map<String, dynamic>) {
      throw NetworkException.nullData();
    }
    return ApiResponse(data: data, statusCode: statusCode);
  }

  NetworkException _fromDio(DioException error) {
    return switch (error.type) {
      DioExceptionType.connectionTimeout ||
      DioExceptionType.sendTimeout ||
      DioExceptionType.receiveTimeout => NetworkException.timeout(),
      DioExceptionType.connectionError => NetworkException.noConnection(),
      _ => NetworkException(
        message: error.message ?? 'No se pudo completar la petición.',
        code: 'network_error',
        statusCode: error.response?.statusCode,
        cause: error,
      ),
    };
  }

  String _errorMessage(dynamic data, int statusCode) {
    if (data is Map && data['error'] is String) {
      return data['error'] as String;
    }
    return 'Error $statusCode';
  }

  @override
  Future<ApiResponse<Json>> get(
    String path, {
    Json? queryParameters,
    Json? headers,
  }) {
    return _request(
      HttpMethod.get,
      path,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  @override
  Future<ApiResponse<Json>> post(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  }) {
    return _request(
      HttpMethod.post,
      path,
      body: body,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  @override
  Future<ApiResponse<Json>> put(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  }) {
    return _request(
      HttpMethod.put,
      path,
      body: body,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  @override
  Future<ApiResponse<Json>> patch(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  }) {
    return _request(
      HttpMethod.patch,
      path,
      body: body,
      queryParameters: queryParameters,
      headers: headers,
    );
  }

  @override
  Future<ApiResponse<Json>> delete(
    String path, {
    Object? body,
    Json? queryParameters,
    Json? headers,
  }) {
    return _request(
      HttpMethod.delete,
      path,
      body: body,
      queryParameters: queryParameters,
      headers: headers,
    );
  }
}
