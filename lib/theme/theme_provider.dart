import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'app_colors.dart';

/// Gestiona el tema seleccionado y lo persiste en SharedPreferences
class ThemeProvider extends ChangeNotifier {
  static const String _themeKey = 'selected_theme_index';
  
  int _selectedIndex = 0;
  int get selectedIndex => _selectedIndex;
  
  AppPalette get currentPalette => AppPalettes.all[_selectedIndex];
  
  ThemeProvider() {
    _loadTheme();
  }
  
  /// Carga el tema guardado al iniciar la app
  Future<void> _loadTheme() async {
    final prefs = await SharedPreferences.getInstance();
    _selectedIndex = prefs.getInt(_themeKey) ?? 0;
    notifyListeners();
  }
  
  /// Cambia el tema y lo guarda en SharedPreferences
  Future<void> setTheme(int index) async {
    if (index < 0 || index >= AppPalettes.all.length) return;
    _selectedIndex = index;
    final prefs = await SharedPreferences.getInstance();
    await prefs.setInt(_themeKey, index);
    notifyListeners();
  }
}
