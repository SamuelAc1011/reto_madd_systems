import 'package:formz/formz.dart';
import 'package:madd_models/madd_models.dart';

/// Error de un celular que no tiene 10 dígitos.
enum PhoneInputError {
  /// El valor no es un celular válido.
  invalid,
}

/// Celular del investigador.
class PhoneInput extends FormzInput<String, PhoneInputError> {
  /// Campo vacío, todavía sin editar.
  const PhoneInput.pure() : super.pure('');

  /// Campo editado.
  const PhoneInput.dirty([super.value = '']) : super.dirty();

  @override
  PhoneInputError? validator(String value) {
    if (PhoneVerification.isValidPhone(value)) return null;
    return PhoneInputError.invalid;
  }
}
