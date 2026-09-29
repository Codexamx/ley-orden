import 'package:flutter/material.dart';
import 'app_colors.dart';

/// Convierte una AppPalette en un ThemeData de Flutter
class AppTheme {
  static ThemeData themeFromPalette(AppPalette palette) {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: palette.background,
      colorScheme: ColorScheme.dark(
        primary: palette.accentPrimary,
        secondary: palette.accentSecondary,
        surface: palette.card,
        error: palette.error,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: palette.background,
        elevation: 0,
        titleTextStyle: TextStyle(
          color: palette.textPrimary,
          fontSize: 20,
          fontWeight: FontWeight.w600,
        ),
        iconTheme: IconThemeData(color: palette.textPrimary),
      ),
      cardTheme: CardTheme(
        color: palette.card,
        elevation: 4,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
      ),
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: palette.accentPrimary,
        foregroundColor: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: palette.card,
        selectedItemColor: palette.accentPrimary,
        unselectedItemColor: palette.textSecondary,
        type: BottomNavigationBarType.fixed,
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: palette.card,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: BorderSide.none,
        ),
        hintStyle: TextStyle(color: palette.textSecondary),
      ),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: palette.textPrimary,
          fontSize: 28,
          fontWeight: FontWeight.bold,
        ),
        headlineMedium: TextStyle(
          color: palette.textPrimary,
          fontSize: 24,
          fontWeight: FontWeight.w600,
        ),
        bodyLarge: TextStyle(
          color: palette.textPrimary,
          fontSize: 16,
        ),
        bodyMedium: TextStyle(
          color: palette.textSecondary,
          fontSize: 14,
        ),
      ),
    );
  }
}
