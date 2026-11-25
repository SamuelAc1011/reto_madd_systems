import 'package:reto_madd_systems/app/app.dart';
import 'package:reto_madd_systems/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => const App());
}
