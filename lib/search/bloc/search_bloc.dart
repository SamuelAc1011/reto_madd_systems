import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:reto_madd_systems/search/bloc/search_event.dart';
import 'package:reto_madd_systems/search/bloc/search_state.dart';
import 'package:reto_madd_systems/search/formz/search_query_input.dart';

/// Busca personajes en la API.
class SearchBloc extends Bloc<SearchEvent, SearchState> {
  /// Crea el bloc y, si [initialQuery] tiene texto, repite esa búsqueda.
  SearchBloc({required this._repository, String initialQuery = ''})
    : super(
        SearchState(
          input: initialQuery.trim().isEmpty
              ? const SearchQueryInput.pure()
              : SearchQueryInput.dirty(initialQuery),
          query: initialQuery.trim(),
        ),
      ) {
    on<SearchQueryChanged>(_onChanged);
    on<SearchSubmitted>(_onSubmitted);
    on<SearchNextPageRequested>(_onNextPage);
    if (initialQuery.trim().isNotEmpty) add(const SearchSubmitted());
  }

  final CharacterRepository _repository;

  void _onChanged(SearchQueryChanged event, Emitter<SearchState> emit) {
    emit(state.copyWith(input: SearchQueryInput.dirty(event.value)));
  }

  Future<void> _onSubmitted(
    SearchSubmitted event,
    Emitter<SearchState> emit,
  ) async {
    final query = state.input.value.trim();
    if (!state.input.isValid || query.isEmpty) {
      emit(
        state.copyWith(
          status: SearchStatus.initial,
          characters: const [],
          query: '',
          hasNext: false,
          errorCode: null,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        status: SearchStatus.loading,
        query: query,
        characters: const [],
        page: 1,
        hasNext: false,
        errorCode: null,
      ),
    );
    await _load(query: query, page: 1, append: false, emit: emit);
  }

  Future<void> _onNextPage(
    SearchNextPageRequested event,
    Emitter<SearchState> emit,
  ) async {
    if (!state.hasNext || state.status == SearchStatus.loadingMore) return;
    emit(state.copyWith(status: SearchStatus.loadingMore, errorCode: null));
    await _load(
      query: state.query,
      page: state.page + 1,
      append: true,
      emit: emit,
    );
  }

  Future<void> _load({
    required String query,
    required int page,
    required bool append,
    required Emitter<SearchState> emit,
  }) async {
    final result = await _repository
        .search(CharacterSearchRequest(name: query, page: page))
        .run();
    if (emit.isDone) return;
    result.fold((error) => _emitFailure(error, append: append, emit: emit), (
      pageResult,
    ) {
      final characters = [
        if (append) ...state.characters,
        ...pageResult.characters,
      ];
      emit(
        state.copyWith(
          status: characters.isEmpty
              ? SearchStatus.empty
              : SearchStatus.success,
          characters: characters,
          page: pageResult.page,
          hasNext: pageResult.hasNext,
          errorCode: null,
        ),
      );
    });
  }

  void _emitFailure(
    CharacterException error, {
    required bool append,
    required Emitter<SearchState> emit,
  }) {
    if (!append && error.code == 'not_found') {
      emit(
        state.copyWith(
          status: SearchStatus.empty,
          characters: const [],
          hasNext: false,
          errorCode: error.code,
        ),
      );
      return;
    }
    emit(
      state.copyWith(
        status: SearchStatus.failure,
        errorCode: error.code,
        hasNext: append && state.hasNext,
        characters: append ? state.characters : const [],
      ),
    );
  }
}
