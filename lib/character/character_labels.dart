import 'package:reto_madd_systems/l10n/l10n.dart';

/// Texto de estado que entiende el investigador.
String characterStatusLabel(AppLocalizations l10n, String status) {
  return switch (status) {
    'Alive' => l10n.statusAlive,
    'Dead' => l10n.statusDead,
    _ => l10n.statusUnknown,
  };
}

/// Texto de género que entiende el investigador.
String characterGenderLabel(AppLocalizations l10n, String gender) {
  return switch (gender) {
    'Male' => l10n.genderMale,
    'Female' => l10n.genderFemale,
    'Genderless' => l10n.genderNone,
    _ => l10n.statusUnknown,
  };
}
