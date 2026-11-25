import 'package:bloc_test/bloc_test.dart';
import 'package:fpdart/fpdart.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:reto_madd_systems/search/bloc/search_bloc.dart';
import 'package:reto_madd_systems/search/bloc/search_event.dart';
import 'package:reto_madd_systems/search/bloc/search_state.dart';
import 'package:reto_madd_systems/search/formz/search_query_input.dart';

void main() {
  blocTest<SearchBloc, SearchState>(
    'reports an empty result when the API has no matches',
    build: () => SearchBloc(repository: _FakeRepository()),
    act: (bloc) {
      bloc
        ..add(const SearchQueryChanged('zzz'))
        ..add(const SearchSubmitted());
    },
    expect: () => [
      const SearchState(input: SearchQueryInput.dirty('zzz')),
      const SearchState(
        input: SearchQueryInput.dirty('zzz'),
        status: SearchStatus.loading,
        query: 'zzz',
      ),
      const SearchState(
        input: SearchQueryInput.dirty('zzz'),
        status: SearchStatus.empty,
        query: 'zzz',
        errorCode: 'not_found',
      ),
    ],
  );

  blocTest<SearchBloc, SearchState>(
    'reports a connection failure without inventing results',
    build: () => SearchBloc(repository: _FakeRepository()),
    act: (bloc) {
      bloc
        ..add(const SearchQueryChanged('offline'))
        ..add(const SearchSubmitted());
    },
    expect: () => [
      const SearchState(input: SearchQueryInput.dirty('offline')),
      const SearchState(
        input: SearchQueryInput.dirty('offline'),
        status: SearchStatus.loading,
        query: 'offline',
      ),
      const SearchState(
        input: SearchQueryInput.dirty('offline'),
        status: SearchStatus.failure,
        query: 'offline',
        errorCode: 'unavailable',
      ),
    ],
  );
}

class _FakeRepository implements CharacterRepository {
  @override
  TaskEither<CharacterException, Character> fetchById(int id) {
    return TaskEither.left(const CharacterException.notFound());
  }

  @override
  TaskEither<CharacterException, CharacterPage> search(
    CharacterSearchRequest request,
  ) {
    if (request.name == 'offline') {
      return TaskEither.left(const CharacterException.unavailable());
    }
    return TaskEither.left(const CharacterException.notFound());
  }
}
