import 'package:madd_repository/madd_repository.dart';
import 'package:reto_madd_systems/app/app.dart';
import 'package:reto_madd_systems/bootstrap.dart';

Future<void> main() async {
  await bootstrap(() => App(repositories: MaddRepositories()));
}
