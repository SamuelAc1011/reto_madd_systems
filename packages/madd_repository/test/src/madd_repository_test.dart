// Not required for test files
// ignore_for_file: prefer_const_constructors
import 'package:madd_repository/madd_repository.dart';
import 'package:test/test.dart';

void main() {
  group('MaddRepository', () {
    test('can be instantiated', () {
      expect(MaddRepository(), isNotNull);
    });
  });
}
