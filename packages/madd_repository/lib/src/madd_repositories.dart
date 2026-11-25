import 'package:madd_repository/src/api_character_repository.dart';
import 'package:madd_repository/src/character_repository.dart';
import 'package:madd_service/madd_service.dart';

/// Punto de composición.
///
/// Construye el cliente, los servicios y entrega a la app solo los contratos.
class MaddRepositories {
  /// Arma el grafo de dependencias.
  ///
  /// [client] existe para las pruebas. En la app se usa el cliente real.
  MaddRepositories({DioApiClient? client}) {
    final apiClient = client ?? DioApiClient.fromConstants();
    characterRepository = ApiCharacterRepository(
      characterService: CharacterService(client: apiClient),
    );
  }

  /// Personajes de la API.
  late final CharacterRepository characterRepository;
}
