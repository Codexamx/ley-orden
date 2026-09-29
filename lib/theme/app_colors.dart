import 'package:flutter/material.dart';

/// Paleta de colores para cada tema de la app
class AppPalette {
  final String name;
  final Color background;
  final Color card;
  final Color cardGradientEnd;
  final Color accentPrimary;
  final Color accentSecondary;
  final Color accentHighlight;
  final Color textPrimary;
  final Color textSecondary;
  final Color error;
  final Color success;

  const AppPalette({
    required this.name,
    required this.background,
    required this.card,
    required this.cardGradientEnd,
    required this.accentPrimary,
    required this.accentSecondary,
    required this.accentHighlight,
    required this.textPrimary,
    required this.textSecondary,
    required this.error,
    required this.success,
  });
}

/// Las 3 paletas disponibles en la app
class AppPalettes {
  /// Paleta 1: Carbón & Fuego (por defecto)
  static const carbonFuego = AppPalette(
    name: 'Carbón & Fuego',
    background: Color(0xFF0D0D0D),
    card: Color(0xFF1A1A1A),
    cardGradientEnd: Color(0xFF2A2A2A),
    accentPrimary: Color(0xFFE53935),
    accentSecondary: Color(0xFF1E88E5),
    accentHighlight: Color(0xFFFFD600),
    textPrimary: Color(0xFFF5F5F5),
    textSecondary: Color(0xFF8A8A8A),
    error: Color(0xFFFF5252),
    success: Color(0xFF00E676),
  );

  /// Paleta 2: Azul Noche
  static const azulNoche = AppPalette(
    name: 'Azul Noche',
    background: Color(0xFF0A1929),
    card: Color(0xFF132F4C),
    cardGradientEnd: Color(0xFF1E497B),
    accentPrimary: Color(0xFFFFD700),
    accentSecondary: Color(0xFF00BCD4),
    accentHighlight: Color(0xFFFF9800),
    textPrimary: Color(0xFFF5F5F5),
    textSecondary: Color(0xFF8A9BA8),
    error: Color(0xFFFF5252),
    success: Color(0xFF00E676),
  );

  /// Paleta 3: Verde Esmeralda
  static const verdeEsmeralda = AppPalette(
    name: 'Verde Esmeralda',
    background: Color(0xFF0B1F17),
    card: Color(0xFF1B3A2D),
    cardGradientEnd: Color(0xFF2D5A45),
    accentPrimary: Color(0xFFFFFFFF),
    accentSecondary: Color(0xFF69F0AE),
    accentHighlight: Color(0xFFFF4081),
    textPrimary: Color(0xFFF5F5F5),
    textSecondary: Color(0xFF8A9BA8),
    error: Color(0xFFFF5252),
    success: Color(0xFF00E676),
  );

  /// Lista de todas las paletas
  static const List<AppPalette> all = [
    carbonFuego,
    azulNoche,
    verdeEsmeralda,
  ];
}
