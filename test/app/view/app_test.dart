import 'package:flutter_test/flutter_test.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:madd_repository/madd_repository.dart';
import 'package:reto_madd_systems/app/app.dart';

import '../../helpers/memory_storage.dart';

void main() {
  testWidgets('asks for a phone when there is no session', (tester) async {
    HydratedBloc.storage = MemoryStorage();
    await tester.pumpWidget(App(repositories: MaddRepositories()));
    await tester.pump();
    await tester.pump();
    await tester.pump(const Duration(milliseconds: 400));

    expect(find.text('Identifica tu espacio'), findsOneWidget);
  });
}
