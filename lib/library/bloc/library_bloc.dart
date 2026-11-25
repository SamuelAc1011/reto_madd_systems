import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:reto_madd_systems/library/bloc/library_event.dart';
import 'package:reto_madd_systems/library/bloc/library_state.dart';

/// Personajes que cada investigador decidió conservar.
class LibraryBloc extends HydratedBloc<LibraryEvent, LibraryState> {
  /// Empieza vacío hasta leer el almacén local.
  LibraryBloc() : super(const LibraryState()) {
    on<LibraryCharacterToggled>(_onToggled);
  }

  void _onToggled(LibraryCharacterToggled event, Emitter<LibraryState> emit) {
    final current = [...?state.charactersByPhone[event.phone]];
    final index = current.indexWhere((item) => item.id == event.character.id);
    if (index >= 0) {
      current.removeAt(index);
    } else {
      current.insert(0, event.character);
    }
    emit(
      state.copyWith(
        charactersByPhone: {...state.charactersByPhone, event.phone: current},
      ),
    );
  }

  @override
  LibraryState? fromJson(Map<String, dynamic> json) {
    try {
      return LibraryState.fromJson(json);
    } on Object {
      return null;
    }
  }

  @override
  Map<String, dynamic>? toJson(LibraryState state) => state.toJson();
}
