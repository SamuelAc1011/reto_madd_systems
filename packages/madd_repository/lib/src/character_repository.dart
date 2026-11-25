import 'package:fpdart/fpdart.dart';
import 'package:madd_models/madd_models.dart';

/// Contrato de personajes.
///
/// La aplicación depende de esta abstracción. La implementación con la API
/// se inyecta desde el punto de composición del paquete.
abstract class CharacterRepository {
  /// Busca por nombre y página.
  TaskEither<CharacterException, CharacterPage> search(
    CharacterSearchRequest request,
  );

  /// Recupera un personaje. Sirve para refrescar una ficha ya guardada.
  TaskEither<CharacterException, Character> fetchById(int id);
}
