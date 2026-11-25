import 'package:material_ui/material_ui.dart';
import 'package:reto_madd_systems/app/router/router.dart';
import 'package:reto_madd_systems/l10n/l10n.dart';

class App({super.key}) extends StatelessWidget {
  final _appRouter = AppRouter();

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        useMaterial3: true,
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: _appRouter.config(),
    );
  }
}
