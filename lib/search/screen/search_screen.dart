import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/character/widget/character_card.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/search/bloc/search_bloc.dart';
import 'package:reto_madd_systems/search/bloc/search_event.dart';
import 'package:reto_madd_systems/search/bloc/search_state.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_event.dart';

/// Búsqueda de personajes por nombre.
class SearchScreen extends StatelessWidget {
  /// Crea la búsqueda y, si hay [initialQuery], la repite al abrir.
  const SearchScreen({required this.initialQuery, super.key});

  /// Último texto que este celular buscó.
  final String initialQuery;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SearchBloc(
        repository: context.read<CharacterRepository>(),
        initialQuery: initialQuery,
      ),
      child: const _SearchView(),
    );
  }
}

class _SearchView extends StatelessWidget {
  const _SearchView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final initialQuery = context.read<SearchBloc>().state.input.value;
    return BlocListener<SearchBloc, SearchState>(
      listenWhen: (previous, current) =>
          previous.query != current.query && current.query.isNotEmpty,
      listener: (context, state) {
        context.read<SessionBloc>().add(SessionQueryRemembered(state.query));
      },
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Row(
              children: [
                Expanded(
                  child: TextFormField(
                    initialValue: initialQuery,
                    textInputAction: TextInputAction.search,
                    decoration: InputDecoration(
                      hintText: l10n.searchHint,
                      prefixIcon: const Icon(Icons.person_search),
                    ),
                    onChanged: (value) {
                      context.read<SearchBloc>().add(SearchQueryChanged(value));
                    },
                    onFieldSubmitted: (_) {
                      context.read<SearchBloc>().add(const SearchSubmitted());
                    },
                  ),
                ),
                const SizedBox(width: 12),
                FilledButton(
                  onPressed: () {
                    context.read<SearchBloc>().add(const SearchSubmitted());
                  },
                  child: Text(l10n.searchAction),
                ),
              ],
            ),
          ),
          Expanded(
            child: BlocBuilder<SearchBloc, SearchState>(
              buildWhen: (previous, current) =>
                  previous.status != current.status ||
                  previous.characters != current.characters ||
                  previous.hasNext != current.hasNext ||
                  previous.errorCode != current.errorCode,
              builder: (context, state) {
                return switch (state.status) {
                  SearchStatus.initial => _Message(text: l10n.searchPrompt),
                  SearchStatus.loading => const Center(
                    child: CircularProgressIndicator(),
                  ),
                  SearchStatus.empty => _Message(text: l10n.searchEmpty),
                  SearchStatus.failure => _Failure(state: state),
                  SearchStatus.success ||
                  SearchStatus.loadingMore => _Results(state: state),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Failure extends StatelessWidget {
  const _Failure({required this.state});

  final SearchState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final message = switch (state.errorCode) {
      'unavailable' => l10n.searchFailure,
      _ => l10n.searchUnexpected,
    };
    if (state.characters.isEmpty) return _Message(text: message);
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: Text(message),
        ),
        Expanded(child: _Results(state: state)),
      ],
    );
  }
}

class _Results extends StatelessWidget {
  const _Results({required this.state});

  final SearchState state;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final extra = state.hasNext || state.status == SearchStatus.loadingMore
        ? 1
        : 0;
    final count = state.characters.length + extra;
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          sliver: SliverList.separated(
            itemCount: count,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              if (index >= state.characters.length) {
                if (state.status == SearchStatus.loadingMore) {
                  return const Padding(
                    padding: EdgeInsets.all(16),
                    child: Center(child: CircularProgressIndicator()),
                  );
                }
                return OutlinedButton(
                  onPressed: () {
                    context.read<SearchBloc>().add(
                      const SearchNextPageRequested(),
                    );
                  },
                  child: Text(l10n.loadMore),
                );
              }
              final character = state.characters[index];
              return CharacterCard(
                character: character,
                onTap: () => context.router.push(
                  CharacterDetailRoute(character: character),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Message extends StatelessWidget {
  const _Message({required this.text});

  final String text;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.titleMedium,
        ),
      ),
    );
  }
}
