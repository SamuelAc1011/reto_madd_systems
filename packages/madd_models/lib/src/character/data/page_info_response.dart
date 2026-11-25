import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_info_response.freezed.dart';
part 'page_info_response.g.dart';

/// Metadatos de paginación de la API.
@freezed
abstract class PageInfoResponse with _$PageInfoResponse {
  /// Crea la información de la página.
  const factory PageInfoResponse({
    /// Total de coincidencias.
    required int count,

    /// Total de páginas.
    required int pages,

    /// URL de la página siguiente, si existe.
    String? next,

    /// URL de la página anterior, si existe.
    String? prev,
  }) = _PageInfoResponse;

  /// Crea la información desde JSON.
  factory PageInfoResponse.fromJson(Map<String, dynamic> json) =>
      _$PageInfoResponseFromJson(json);
}
