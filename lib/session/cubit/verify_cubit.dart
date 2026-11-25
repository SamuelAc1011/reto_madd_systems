import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:madd_models/madd_models.dart';
import 'package:reto_madd_systems/session/formz/code_input.dart';

/// Formulario del código simulado.
class VerifyCubit extends Cubit<VerifyState> {
  /// Crea el formulario para [phone].
  VerifyCubit(String phone) : _phone = phone, super(const VerifyState());

  final String _phone;

  /// Actualiza el código.
  void changed(String value) {
    emit(
      state.copyWith(
        code: CodeInput.dirty(value),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  /// Acepta el código solo si coincide con el celular.
  void submit() {
    final next = state.copyWith(isValidated: true);
    emit(next);
    if (!next.isValid) return;
    final matches = PhoneVerification.matches(
      VerifyPhoneRequest(phone: _phone, code: next.code.value),
    );
    emit(
      next.copyWith(
        status: matches
            ? FormzSubmissionStatus.success
            : FormzSubmissionStatus.failure,
      ),
    );
  }
}

/// Estado del código.
class VerifyState extends Equatable with FormzMixin {
  /// Crea el estado.
  const VerifyState({
    this.code = const CodeInput.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValidated = false,
  });

  /// Código capturado.
  final CodeInput code;

  /// Resultado del envío.
  final FormzSubmissionStatus status;

  /// El investigador ya intentó entrar.
  final bool isValidated;

  /// Copia el estado.
  VerifyState copyWith({
    CodeInput? code,
    FormzSubmissionStatus? status,
    bool? isValidated,
  }) {
    return VerifyState(
      code: code ?? this.code,
      status: status ?? this.status,
      isValidated: isValidated ?? this.isValidated,
    );
  }

  @override
  List<FormzInput<String, dynamic>> get inputs => [code];

  @override
  List<Object?> get props => [code, status, isValidated];
}
