// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:madd_service/madd_service.dart';
import 'package:test/test.dart';

void main() {
  group('MaddService', () {
    test('can be instantiated', () {
      expect(MaddService(), isNotNull);
    });
  });
}
