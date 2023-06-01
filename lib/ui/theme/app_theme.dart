import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';

// ///The app was designed in a light theme mode.
// ///There is no dark theme mode for now.

class AppTheme {
  AppTheme._();

  static String get _fontFamily => 'ViceCitySans';
  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static final ColorScheme _lightColorScheme =
      const ColorScheme.light().copyWith(
    primary: kcPrimaryColor,
    secondary: kcTextColor,
    error: kcMediumGrey,
    background: kcVeryLight,
  );

  static ThemeData _themeData(ColorScheme colorScheme) => ThemeData(
      scaffoldBackgroundColor: colorScheme.background,
      colorScheme: colorScheme,
      textTheme: _textTheme(colorScheme),
      iconTheme: _iconTheme(colorScheme),
      fontFamily: _fontFamily,
      appBarTheme: _appBarTheme(colorScheme),
      brightness: colorScheme.brightness,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: colorScheme.background,
      ));

  static TextTheme _textTheme(ColorScheme colorScheme) => TextTheme(
        displayLarge: TextStyle(
          fontSize: 96.sp,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          fontSize: 72.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          fontSize: 56.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 40.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 32.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 28.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 24.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 20.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 16.sp,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
      );

  static AppBarTheme _appBarTheme(ColorScheme colorScheme) => AppBarTheme(
        backgroundColor: colorScheme.background,
        iconTheme: _iconTheme(colorScheme),
        actionsIconTheme: _iconTheme(colorScheme),
      );

  static IconThemeData _iconTheme(ColorScheme colorScheme) => IconThemeData(
        color: colorScheme.onBackground,
      );
}
