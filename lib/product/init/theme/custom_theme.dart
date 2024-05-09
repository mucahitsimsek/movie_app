import 'package:flutter/material.dart';

/// Custom theme for the app
abstract class CustomTheme {
  /// Light theme for the app.
  ThemeData get themeData;

  ///ElevatedButton [ThemeData] for the app.
  ElevatedButtonThemeData get elevatedButtonThemeData;

  /// Text theme for the app.
  TextTheme get textTheme;

  /// App bar theme for the app.
  AppBarTheme get appBarTheme;
}
