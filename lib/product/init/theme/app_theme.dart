// ignore_for_file: lines_longer_than_80_chars

import 'package:flutter/material.dart';
import 'package:gen/gen.dart';
import 'package:interview/product/init/theme/custom_theme.dart';

///App theme
final class AppTheme extends CustomTheme {
  @override
  ThemeData get themeData => ThemeData(
        elevatedButtonTheme: elevatedButtonThemeData,
        scaffoldBackgroundColor: ColorName.background,
        splashColor: ColorName.background,
        textTheme: textTheme,
        appBarTheme: appBarTheme,
      );

  @override
  ElevatedButtonThemeData get elevatedButtonThemeData => const ElevatedButtonThemeData();

  @override
  TextTheme get textTheme => const TextTheme(
        bodyLarge: TextStyle(
          color: ColorName.detailText,
          fontSize: 16,
        ),
        headlineSmall: TextStyle(
          color: ColorName.detailText,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );

  @override
  AppBarTheme get appBarTheme => const AppBarTheme(
        backgroundColor: ColorName.background,
        foregroundColor: ColorName.descriptionText,
        titleTextStyle: TextStyle(
          color: ColorName.detailText,
          fontSize: 24,
          fontWeight: FontWeight.bold,
        ),
      );
}
