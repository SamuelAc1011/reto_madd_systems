import 'package:freezed_annotation/freezed_annotation.dart';

part 'verify_phone_request.freezed.dart';
part 'verify_phone_request.g.dart';

/// Petición de la verificación simulada por celular.
@freezed
abstract class VerifyPhoneRequest with _$VerifyPhoneRequest {
  /// Crea la petición con el celular y el código capturado.
  const factory VerifyPhoneRequest({
    /// Número celular del investigador.
    required String phone,

    /// Código de cuatro dígitos.
    required String code,
  }) = _VerifyPhoneRequest;

  /// Crea la petición desde JSON.
  factory VerifyPhoneRequest.fromJson(Map<String, dynamic> json) =>
      _$VerifyPhoneRequestFromJson(json);
}
