import 'package:flutter/material.dart';
import 'login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<double> _scaleAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 2),
      vsync: this,
    );

    _fadeAnimation = Tween<double>(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.easeIn),
    );

    _scaleAnimation = Tween<double>(begin: 0.5, end: 1.0).animate(
      CurvedAnimation(parent: _controller, curve: Curves.elasticOut),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _onTap() {
    _controller.reset();
    _controller.forward();
  }

  void _onDoubleTap() {
    Navigator.of(context).pushReplacement(
      PageRouteBuilder(
        pageBuilder: (_, __, ___) => const LoginScreen(),
        transitionsBuilder: (_, animation, __, child) {
          return FadeTransition(opacity: animation, child: child);
        },
        transitionDuration: const Duration(milliseconds: 600),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final palette = Theme.of(context).colorScheme;

    return Scaffold(
      body: GestureDetector(
        onTap: _onTap,
        onDoubleTap: _onDoubleTap,
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                palette.surface,
                palette.primary.withOpacity(0.3),
              ],
            ),
          ),
          child: Center(
            child: AnimatedBuilder(
              animation: _controller,
              builder: (context, child) {
                return FadeTransition(
                  opacity: _fadeAnimation,
                  child: ScaleTransition(
                    scale: _scaleAnimation,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.gavel,
                          size: 100,
                          color: palette.primary,
                        ),
                        const SizedBox(height: 24),
                        Text(
                          'Ley & Orden',
                          style: Theme.of(context).textTheme.headlineLarge,
                        ),
                        const SizedBox(height: 8),
                        Text(
                          'Agenda Profesional para Abogados',
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                        const SizedBox(height: 48),
                        Text(
                          'Toca para repetir • Doble toca para entrar',
                          style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}
