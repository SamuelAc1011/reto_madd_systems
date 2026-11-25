import 'package:madd_models/madd_models.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/character/character_labels.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';

/// Tarjeta compacta de un personaje.
class CharacterCard extends StatelessWidget {
  /// Crea la tarjeta.
  const CharacterCard({
    required this.character,
    required this.onTap,
    super.key,
  });

  /// Personaje que se muestra.
  final Character character;

  /// Abre la ficha.
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final l10n = context.l10n;
    return Material(
      color: theme.colorScheme.surfaceContainerHigh,
      borderRadius: BorderRadius.circular(20),
      clipBehavior: Clip.antiAlias,
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(14),
                child: Image.network(
                  character.image,
                  width: 72,
                  height: 72,
                  fit: BoxFit.cover,
                  errorBuilder: (context, error, stackTrace) {
                    return const SizedBox(
                      width: 72,
                      height: 72,
                      child: ColoredBox(
                        color: Color(0xFF243028),
                        child: Icon(Icons.person_off),
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(width: 12),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(character.name, style: theme.textTheme.titleMedium),
                    const SizedBox(height: 4),
                    Text(
                      '${characterStatusLabel(l10n, character.status)} · '
                      '${character.species}',
                    ),
                    Text(
                      character.locationName,
                      style: theme.textTheme.bodySmall,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.chevron_right),
            ],
          ),
        ),
      ),
    );
  }
}
