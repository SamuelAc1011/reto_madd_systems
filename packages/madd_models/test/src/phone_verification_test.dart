import 'package:madd_models/madd_models.dart';
import 'package:test/test.dart';

void main() {
  group('PhoneVerification', () {
    test('accepts a 10 digit phone and a country prefix', () {
      expect(PhoneVerification.isValidPhone('55 1234 5678'), isTrue);
      expect(
        PhoneVerification.normalizePhone('+52 55 1234 5678'),
        '5512345678',
      );
    });

    test('matches the last four digits', () {
      const request = VerifyPhoneRequest(phone: '5512345678', code: '5678');
      expect(PhoneVerification.matches(request), isTrue);
      expect(
        PhoneVerification.matches(
          const VerifyPhoneRequest(phone: '5512345678', code: '0000'),
        ),
        isFalse,
      );
    });
  });
}
