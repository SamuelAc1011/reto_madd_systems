import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:madd_models/madd_models.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';
import 'package:reto_madd_systems/character/widget/character_card.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/library/bloc/library_bloc.dart';
import 'package:reto_madd_systems/library/bloc/library_event.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';

/// Personajes conservados del celular activo.
class LibraryScreen extends StatelessWidget {
  /// Crea la lista local.
  const LibraryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final phone = context.watch<SessionBloc>().state.phone;
    final characters = context.select<LibraryBloc, List<Character>>(
      (bloc) => bloc.state.charactersByPhone[phone] ?? const [],
    );
    if (characters.isEmpty) {
      return _Notice(title: l10n.savedEmpty, body: l10n.savedHint);
    }
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(20, 8, 20, 4),
          sliver: SliverToBoxAdapter(child: Text(l10n.savedHint)),
        ),
        SliverPadding(
          padding: const EdgeInsets.fromLTRB(16, 8, 16, 24),
          sliver: SliverList.separated(
            itemCount: characters.length,
            separatorBuilder: (context, index) => const SizedBox(height: 12),
            itemBuilder: (context, index) {
              final character = characters[index];
              return Dismissible(
                key: ValueKey(character.id),
                direction: DismissDirection.endToStart,
                background: const ColoredBox(
                  color: Color(0xFF5C2A2A),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 20),
                      child: Icon(Icons.delete_outline),
                    ),
                  ),
                ),
                onDismissed: (_) {
                  if (phone == null) return;
                  context.read<LibraryBloc>().add(
                    LibraryCharacterToggled(phone: phone, character: character),
                  );
                },
                child: CharacterCard(
                  character: character,
                  onTap: () => context.router.push(
                    CharacterDetailRoute(character: character),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

class _Notice extends StatelessWidget {
  const _Notice({required this.title, required this.body});

  final String title;
  final String body;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Icon(
              Icons.bookmark_border,
              size: 42,
              color: theme.colorScheme.primary,
            ),
            const SizedBox(height: 16),
            Text(
              title,
              textAlign: TextAlign.center,
              style: theme.textTheme.titleMedium,
            ),
            const SizedBox(height: 8),
            Text(
              body,
              textAlign: TextAlign.center,
              style: theme.textTheme.bodyMedium,
            ),
          ],
        ),
      ),
    );
  }
}
