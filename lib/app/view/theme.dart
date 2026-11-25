import 'package:material_ui/material_ui.dart';

final _theme = ThemeData(
  useMaterial3: true,
  brightness: Brightness.dark,
  colorScheme: const ColorScheme.dark(
    primary: Color(0xFFB6E86A),
    onPrimary: Color(0xFF142006),
    secondary: Color(0xFF7AD7C6),
    surface: Color(0xFF101612),
    surfaceContainerHigh: Color(0xFF1A2820),
    error: Color(0xFFFFB4AB),
  ),
  scaffoldBackgroundColor: const Color(0xFF07110C),
  appBarTheme: const AppBarTheme(
    backgroundColor: Color(0xFF07110C),
    foregroundColor: Color(0xFFF3F7EF),
  ),
  navigationBarTheme: const NavigationBarThemeData(
    backgroundColor: Color(0xFF101612),
  ),
  inputDecorationTheme: InputDecorationTheme(
    filled: true,
    fillColor: const Color(0xFF17211B),
    border: OutlineInputBorder(borderRadius: BorderRadius.circular(16)),
  ),
);

ThemeData get theme => _theme;
