import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/madd_repository.dart';

/// Ficha de un personaje, con un intento de refresco en red.
class CharacterDetailCubit extends Cubit<CharacterDetailState> {
  /// Muestra [character] de inmediato y luego intenta actualizarlo.
  CharacterDetailCubit({
    required this._repository,
    required Character character,
  }) : super(CharacterDetailState(character: character)) {
    unawaited(_refresh());
  }

  final CharacterRepository _repository;

  Future<void> _refresh() async {
    final result = await _repository.fetchById(state.character.id).run();
    if (isClosed) return;
    result.fold(
      (error) => emit(
        state.copyWith(
          refreshing: false,
          showingCache: error.code == 'unavailable',
        ),
      ),
      (character) => emit(CharacterDetailState(character: character)),
    );
  }
}

/// Lo que muestra la ficha.
class CharacterDetailState {
  /// Crea el estado de la ficha.
  const CharacterDetailState({
    required this.character,
    this.refreshing = true,
    this.showingCache = false,
  });

  /// Personaje visible.
  final Character character;

  /// Todavía se está pidiendo la versión remota.
  final bool refreshing;

  /// La red falló y se conserva la copia con la que se abrió la ficha.
  final bool showingCache;

  /// Copia el estado cambiando solo lo indicado.
  CharacterDetailState copyWith({
    Character? character,
    bool? refreshing,
    bool? showingCache,
  }) {
    return CharacterDetailState(
      character: character ?? this.character,
      refreshing: refreshing ?? this.refreshing,
      showingCache: showingCache ?? this.showingCache,
    );
  }
}
