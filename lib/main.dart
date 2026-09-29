import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'theme/app_colors.dart';
import 'theme/app_theme.dart';
import 'theme/theme_provider.dart';
import 'screens/splash_screen.dart';

void main() {
  runApp(const LeyOrdenApp());
}

class LeyOrdenApp extends StatelessWidget {
  const LeyOrdenApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => ThemeProvider(),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) {
          return AnimatedTheme(
            duration: const Duration(milliseconds: 500),
            curve: Curves.easeInOut,
            data: AppTheme.themeFromPalette(themeProvider.currentPalette),
            child: MaterialApp(
              title: 'Ley & Orden',
              debugShowCheckedModeBanner: false,
              home: const SplashScreen(),
            ),
          );
        },
      ),
    );
  }
}
