import 'package:fpdart/fpdart.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_service/src/network/dio_api_client.dart';

/// Consultas de personajes contra la API pública.
class CharacterService {
  /// Crea el servicio con el cliente inyectado.
  CharacterService({required this._client});

  final DioApiClient _client;

  /// Busca personajes por nombre.
  TaskEither<AppException, CharacterPageResponse> search(
    CharacterSearchRequest request,
  ) {
    return TaskEither.tryCatch(() async {
      final response = await _client.get(
        '/character',
        queryParameters: request.toJson(),
      );
      return CharacterPageResponse.fromJson(response.data);
    }, _onError);
  }

  /// Trae un personaje por su identificador.
  TaskEither<AppException, CharacterResponse> fetchById(int id) {
    return TaskEither.tryCatch(() async {
      final response = await _client.get('/character/$id');
      return CharacterResponse.fromJson(response.data);
    }, _onError);
  }

  AppException _onError(Object error, StackTrace stackTrace) {
    if (error is CharacterException) return error;
    if (error is NetworkException &&
        (error.statusCode == 404 || error.code == 'not_found')) {
      return const CharacterException.notFound();
    }
    if (error is NetworkException &&
        (error.code == 'no_connection' || error.code == 'network_timeout')) {
      return const CharacterException.unavailable();
    }
    if (error is AppException) return error;
    return AppException(
      message: error.toString(),
      code: 'unexpected',
      stackTrace: stackTrace,
    );
  }
}
