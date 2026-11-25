import 'package:fpdart/fpdart.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/src/character_repository.dart';
import 'package:madd_service/madd_service.dart';

/// [CharacterRepository] que habla con la API a través de [CharacterService].
class ApiCharacterRepository implements CharacterRepository {
  /// Crea el repositorio con el servicio inyectado.
  ApiCharacterRepository({required this._characterService});

  final CharacterService _characterService;

  @override
  TaskEither<CharacterException, CharacterPage> search(
    CharacterSearchRequest request,
  ) {
    return _characterService
        .search(request)
        .mapLeft(_map)
        .map(
          (response) =>
              CharacterPage.fromResponse(response, page: request.page),
        );
  }

  @override
  TaskEither<CharacterException, Character> fetchById(int id) {
    return _characterService
        .fetchById(id)
        .mapLeft(_map)
        .map(Character.fromResponse);
  }

  CharacterException _map(AppException exception) {
    if (exception is CharacterException) return exception;
    if (exception is NetworkException &&
        (exception.statusCode == 404 || exception.code == 'not_found')) {
      return const CharacterException.notFound();
    }
    if (exception is NetworkException) {
      return const CharacterException.unavailable();
    }
    return const CharacterException.unexpected();
  }
}
