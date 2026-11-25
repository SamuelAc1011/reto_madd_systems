// Ignore for testing purposes
// ignore_for_file: prefer_const_constructors

import 'package:flutter_test/flutter_test.dart';
import 'package:reto_madd_systems/app/app.dart';
import 'package:reto_madd_systems/counter/counter.dart';

void main() {
  group('App', () {
    testWidgets('renders CounterPage', (tester) async {
      await tester.pumpWidget(App());
      expect(find.byType(CounterScreen), findsOneWidget);
    });
  });
}
