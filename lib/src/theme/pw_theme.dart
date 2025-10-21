import 'package:flutter/material.dart';

/// PWTheme: Common theme system using Material 3.
///
/// Provides light and dark ThemeData configured with Material 3.
/// You can use these in your `MaterialApp`:
///
/// ```dart
/// MaterialApp(
///   theme: PWTheme.light,
///   darkTheme: PWTheme.dark,
///   themeMode: ThemeMode.system,
/// )
/// ```
class PWTheme {
  /// Light theme (Material 3) using a seed color.
  static final ThemeData light = ThemeData(
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2962FF),
      brightness: Brightness.light,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(centerTitle: true),
  );

  /// Dark theme (Material 3) using the same seed color.
  static final ThemeData dark = ThemeData(
    brightness: Brightness.dark,
    colorScheme: ColorScheme.fromSeed(
      seedColor: const Color(0xFF2962FF),
      brightness: Brightness.dark,
    ),
    useMaterial3: true,
    appBarTheme: const AppBarTheme(centerTitle: true),
  );
}