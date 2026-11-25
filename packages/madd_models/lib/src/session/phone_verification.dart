import 'package:madd_models/src/session/data/verify_phone_request.dart';

/// Reglas de la identificación por celular.
///
/// La organización no envía SMS. El código válido son los últimos cuatro
/// dígitos del número ya normalizado.
abstract final class PhoneVerification {
  static final RegExp _nonDigits = RegExp(r'\D');

  /// Deja solo dígitos y quita el prefijo de México cuando viene incluido.
  static String normalizePhone(String value) {
    var digits = value.replaceAll(_nonDigits, '');
    if (digits.length == 13 && digits.startsWith('521')) {
      digits = digits.substring(3);
    } else if (digits.length == 12 && digits.startsWith('52')) {
      digits = digits.substring(2);
    }
    return digits;
  }

  /// Un celular válido, para este reto, tiene 10 dígitos.
  static bool isValidPhone(String value) => normalizePhone(value).length == 10;

  /// El código coincide con los últimos cuatro dígitos del celular.
  static bool matches(VerifyPhoneRequest request) {
    final phone = normalizePhone(request.phone);
    final code = request.code.replaceAll(_nonDigits, '');
    if (phone.length != 10 || code.length != 4) return false;
    return phone.substring(6) == code;
  }
}
