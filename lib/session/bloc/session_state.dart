import 'package:freezed_annotation/freezed_annotation.dart';

part 'session_state.freezed.dart';
part 'session_state.g.dart';

/// Sesión local del dispositivo.
@freezed
abstract class SessionState with _$SessionState {
  /// Crea el estado de sesión.
  const factory SessionState({
    /// Celular activo. Nulo cuando nadie ha entrado.
    String? phone,

    /// Última búsqueda de cada celular.
    @Default(<String, String>{}) Map<String, String> lastQueryByPhone,
  }) = _SessionState;

  /// Restaura la sesión desde disco.
  factory SessionState.fromJson(Map<String, dynamic> json) =>
      _$SessionStateFromJson(json);
}
