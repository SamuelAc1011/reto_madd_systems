import 'package:auto_route/auto_route.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';

/// Rutas de la aplicación.
@AutoRouterConfig(replaceInRouteName: 'Screen|Provider,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: GateRoute.page, initial: true),
    AutoRoute(page: PhoneRoute.page),
    AutoRoute(page: VerifyRoute.page),
    AutoRoute(page: ExplorerRoute.page),
    AutoRoute(page: CharacterDetailRoute.page),
  ];
}
