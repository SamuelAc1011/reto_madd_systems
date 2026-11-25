import 'package:formz/formz.dart';

/// Error del código de cuatro dígitos.
enum CodeInputError {
  /// No son cuatro dígitos.
  invalid,
}

/// Código simulado de acceso.
class CodeInput extends FormzInput<String, CodeInputError> {
  /// Campo vacío, todavía sin editar.
  const CodeInput.pure() : super.pure('');

  /// Campo editado.
  const CodeInput.dirty([super.value = '']) : super.dirty();

  static final RegExp _code = RegExp(r'^\d{4}$');

  @override
  CodeInputError? validator(String value) {
    return _code.hasMatch(value) ? null : CodeInputError.invalid;
  }
}
