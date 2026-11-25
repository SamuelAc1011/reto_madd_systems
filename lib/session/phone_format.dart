/// Presenta un celular de 10 dígitos en grupos legibles.
String formatPhone(String phone) {
  if (phone.length != 10) return phone;
  return '${phone.substring(0, 2)} '
      '${phone.substring(2, 6)} '
      '${phone.substring(6)}';
}
