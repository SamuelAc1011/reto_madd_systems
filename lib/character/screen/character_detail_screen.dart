import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madd_models/madd_models.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/character/character_labels.dart';
import 'package:reto_madd_systems/character/cubit/character_detail_cubit.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/library/bloc/library_bloc.dart';
import 'package:reto_madd_systems/library/bloc/library_event.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';

/// Ficha de un personaje y la acción de conservarlo.
@RoutePage()
class CharacterDetailScreen extends StatelessWidget {
  /// Abre la ficha con la copia que ya tenemos.
  const CharacterDetailScreen({required this.character, super.key});

  /// Personaje de la búsqueda o de la biblioteca.
  final Character character;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => CharacterDetailCubit(
        repository: context.read<CharacterRepository>(),
        character: character,
      ),
      child: const _CharacterDetailView(),
    );
  }
}

class _CharacterDetailView extends StatelessWidget {
  const _CharacterDetailView();

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final detail = context.watch<CharacterDetailCubit>().state;
    final character = detail.character;
    final phone = context.watch<SessionBloc>().state.phone;
    final saved = context.select<LibraryBloc, bool>((bloc) {
      final items = bloc.state.charactersByPhone[phone] ?? const <Character>[];
      return items.any((item) => item.id == character.id);
    });
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 280,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(character.name),
              background: Image.network(
                character.image,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) {
                  return const ColoredBox(
                    color: Color(0xFF17211B),
                    child: Center(child: Icon(Icons.image_not_supported)),
                  );
                },
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 32),
            sliver: SliverList.builder(
              itemCount: 8,
              itemBuilder: (context, index) {
                return switch (index) {
                  0 when detail.refreshing => const LinearProgressIndicator(),
                  0 => const SizedBox.shrink(),
                  1 when detail.showingCache => Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 16),
                    child: Text(
                      l10n.cacheNotice,
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.error,
                      ),
                    ),
                  ),
                  1 => const SizedBox(height: 16),
                  2 => _Fact(
                    label: l10n.speciesLabel,
                    value:
                        '${characterStatusLabel(l10n, character.status)} · '
                        '${character.species}',
                  ),
                  3 => _Fact(
                    label: l10n.genderLabel,
                    value: characterGenderLabel(l10n, character.gender),
                  ),
                  4 => _Fact(
                    label: l10n.originLabel,
                    value: character.originName,
                  ),
                  5 => _Fact(
                    label: l10n.locationLabel,
                    value: character.locationName,
                  ),
                  6 => Text(
                    l10n.episodeCount(character.episodeUrls.length),
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  _ => Padding(
                    padding: const EdgeInsets.only(top: 24),
                    child: FilledButton.icon(
                      onPressed: phone == null
                          ? null
                          : () {
                              context.read<LibraryBloc>().add(
                                LibraryCharacterToggled(
                                  phone: phone,
                                  character: character,
                                ),
                              );
                            },
                      icon: Icon(
                        saved ? Icons.bookmark : Icons.bookmark_add_outlined,
                      ),
                      label: Text(saved ? l10n.savedAction : l10n.saveAction),
                    ),
                  ),
                };
              },
            ),
          ),
        ],
      ),
    );
  }
}

class _Fact extends StatelessWidget {
  const _Fact({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: theme.textTheme.labelLarge),
          if (value.isNotEmpty) ...[
            const SizedBox(height: 4),
            Text(value, style: theme.textTheme.titleMedium),
          ],
        ],
      ),
    );
  }
}
