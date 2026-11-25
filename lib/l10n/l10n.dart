import 'package:flutter/widgets.dart';
import 'package:reto_madd_systems/l10n/gen/app_localizations.dart';

export 'package:reto_madd_systems/l10n/gen/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
