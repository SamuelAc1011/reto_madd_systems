import 'package:cupertino_ui/cupertino_ui.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart'
    show GlobalWidgetsLocalizations;
import 'package:madd_repository/madd_repository.dart';
import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.dart';
import 'package:reto_madd_systems/app/view/theme.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';
import 'package:reto_madd_systems/library/bloc/library_bloc.dart';
import 'package:reto_madd_systems/session/bloc/session_bloc.dart';

/// Raíz de la interfaz.
class App extends StatelessWidget {
  /// Crea la app con los repositorios ya compuestos.
  App({required this.repositories, super.key}) : _router = AppRouter();

  /// Grafo de dependencias.
  final MaddRepositories repositories;

  final AppRouter _router;

  @override
  Widget build(BuildContext context) {
    return RepositoryProvider<CharacterRepository>.value(
      value: repositories.characterRepository,
      child: MultiBlocProvider(
        providers: [
          BlocProvider(create: (_) => SessionBloc()),
          BlocProvider(create: (_) => LibraryBloc()),
        ],
        child: MaterialApp.router(
          locale: const Locale('es'),
          onGenerateTitle: (context) => context.l10n.appTitle,
          theme: theme,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
            GlobalCupertinoLocalizations.delegate,
            GlobalWidgetsLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerConfig: _router.config(),
        ),
      ),
    );
  }
}
