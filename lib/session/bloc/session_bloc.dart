import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_event.dart';
import 'package:reto_madd_systems/session/bloc/session_state.dart';

/// Recuerda qué investigador está activo y su última búsqueda.
class SessionBloc extends HydratedBloc<SessionEvent, SessionState> {
  /// Empieza sin celular hasta que el almacén local diga lo contrario.
  SessionBloc() : super(const SessionState()) {
    on<SessionSignedIn>(_onSignedIn);
    on<SessionSignedOut>(_onSignedOut);
    on<SessionQueryRemembered>(_onQueryRemembered);
  }

  void _onSignedIn(SessionSignedIn event, Emitter<SessionState> emit) {
    emit(state.copyWith(phone: event.phone));
  }

  void _onSignedOut(SessionSignedOut event, Emitter<SessionState> emit) {
    emit(state.copyWith(phone: null));
  }

  void _onQueryRemembered(
    SessionQueryRemembered event,
    Emitter<SessionState> emit,
  ) {
    final phone = state.phone;
    if (phone == null) return;
    emit(
      state.copyWith(
        lastQueryByPhone: {...state.lastQueryByPhone, phone: event.query},
      ),
    );
  }

  @override
  SessionState? fromJson(Map<String, dynamic> json) {
    try {
      return SessionState.fromJson(json);
    } on Object {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(SessionState state) => state.toJson();
}
