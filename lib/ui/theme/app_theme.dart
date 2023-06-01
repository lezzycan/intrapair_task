
import 'package:flutter/material.dart';
import 'package:intrapair_task/ui/common/app_colors.dart';

// ///The app was designed in a light theme mode.
// ///There is no dark theme mode for now.

// /// How to use app colorScheme:
// /// If you are assigning a color property to a widget that has it's color value as a member of the colors in the app theme,
// /// you should assign the color as so => 'color: Theme.of(context).colorScheme.colorNameAccordingToTheme' e.g Theme.of(context).colorScheme.background

// /// How to use app theme:
// /// In your main.dart file, inside the MaterialApp() method, you should assign the theme parameter as so => 'theme: AfmThemeManager.lightTheme

// ///  How to use app textTheme:
// /// If you are assigning a textStyle property to a text widget that has it's style values as a member of the textStyles in the app theme,
/// You should assign the textStyle as so => 'textStyle: Theme.of(context).textStyle.textStyleNameAccordingToTheme' e.g Theme.of(context).colorScheme.bodyLarge

class AppTheme {
  AppTheme._();

  static String get _fontFamily => 'Outfit';
  static ThemeData lightTheme = _themeData(_lightColorScheme);

  static final ColorScheme _lightColorScheme = const ColorScheme.light()
      .copyWith(
          primary: kcPrimaryColor,
          secondary: kcTextColor,
          error: kcMediumGrey,
          background:kcPrimaryColorDark,
          
          
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
          fontSize: 96,
          color: colorScheme.onPrimary,
          fontWeight: FontWeight.w500,
        ),
        displayMedium: TextStyle(
          fontSize: 72,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        displaySmall: TextStyle(
          fontSize: 56,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        headlineMedium: TextStyle(
          fontSize: 40,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        headlineSmall: TextStyle(
          fontSize: 32,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          fontSize: 28,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        bodyLarge: TextStyle(
          fontSize: 24,
          color: colorScheme.secondary,
          
          fontWeight: FontWeight.w500,
        ),
        bodyMedium: TextStyle(
          fontSize: 20,
          color: colorScheme.secondary,
          fontWeight: FontWeight.w500,
        ),
        bodySmall: TextStyle(
          fontSize: 16,
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
