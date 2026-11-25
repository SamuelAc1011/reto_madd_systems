import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:madd_models/madd_models.dart';

part 'library_state.freezed.dart';
part 'library_state.g.dart';

/// Copia local separada por celular.
@freezed
abstract class LibraryState with _$LibraryState {
  /// Crea el estado.
  // ignore: invalid_annotation_target
  @JsonSerializable(explicitToJson: true)
  const factory LibraryState({
    /// Personajes guardados, con el celular como llave.
    @Default(<String, List<Character>>{})
    Map<String, List<Character>> charactersByPhone,
  }) = _LibraryState;

  /// Restaura la biblioteca desde disco.
  factory LibraryState.fromJson(Map<String, dynamic> json) =>
      _$LibraryStateFromJson(json);
}
