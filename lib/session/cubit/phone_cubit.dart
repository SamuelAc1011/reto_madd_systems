import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:formz/formz.dart';
import 'package:reto_madd_systems/session/formz/phone_input.dart';

/// Formulario del celular.
class PhoneCubit extends Cubit<PhoneState> {
  /// Empieza con el campo intacto.
  PhoneCubit() : super(const PhoneState());

  /// Actualiza el celular.
  void changed(String value) {
    emit(
      state.copyWith(
        phone: PhoneInput.dirty(value),
        status: FormzSubmissionStatus.initial,
      ),
    );
  }

  /// Marca el formulario y, si es válido, deja pasar a la verificación.
  void submit() {
    final next = state.copyWith(isValidated: true);
    emit(next);
    if (!next.isValid) return;
    emit(next.copyWith(status: FormzSubmissionStatus.success));
  }
}

/// Estado del celular.
class PhoneState extends Equatable with FormzMixin {
  /// Crea el estado.
  const PhoneState({
    this.phone = const PhoneInput.pure(),
    this.status = FormzSubmissionStatus.initial,
    this.isValidated = false,
  });

  /// Celular capturado.
  final PhoneInput phone;

  /// Resultado del envío.
  final FormzSubmissionStatus status;

  /// El investigador ya intentó continuar.
  final bool isValidated;

  /// Copia el estado.
  PhoneState copyWith({
    PhoneInput? phone,
    FormzSubmissionStatus? status,
    bool? isValidated,
  }) {
    return PhoneState(
      phone: phone ?? this.phone,
      status: status ?? this.status,
      isValidated: isValidated ?? this.isValidated,
    );
  }

  @override
  List<FormzInput<String, dynamic>> get inputs => [phone];

  @override
  List<Object?> get props => [phone, status, isValidated];
}
