import 'package:auto_route/auto_route.dart';
import 'package:reto_madd_systems/app/router/router.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen|Provider,Route')
class AppRouter extends RootStackRouter {
  @override
  List<AutoRoute> get routes => [
    AutoRoute(page: CounterRoute.page, initial: true),
  ];
}
