import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';

/// A dónde debe ir el arranque.
enum GateTarget {
  /// Todavía no se leyó la sesión.
  pending,

  /// No hay celular activo.
  phone,

  /// Hay un espacio para abrir.
  explorer,
}

/// Lee la sesión y elige la ruta inicial.
class GateCubit extends Cubit<GateTarget> {
  /// Programa la decisión después de que la pantalla ya escucha.
  GateCubit(SessionBloc session) : super(GateTarget.pending) {
    unawaited(
      Future<void>.microtask(() {
        if (isClosed) return;
        emit(
          session.state.phone == null ? GateTarget.phone : GateTarget.explorer,
        );
      }),
    );
  }
}
