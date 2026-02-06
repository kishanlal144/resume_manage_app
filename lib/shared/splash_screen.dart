import 'dart:async';
import 'package:flutter/material.dart';
import 'package:resume_manage_app/features/auth/presentation/screens/login_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _logoOpacity = 0.0;

  @override
  void initState() {
    super.initState();

    // Fade-in animation
    Future.delayed(const Duration(milliseconds: 300), () {
      setState(() {
        _logoOpacity = 1.0;
      });
    });

    // Navigate to login
    Timer(const Duration(seconds: 6), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const LoginScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        color: Colors.blue,
        child: Center(
          child: AnimatedOpacity(
            opacity: _logoOpacity,
            duration: const Duration(milliseconds: 1200),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                // LOGO
                Image.asset(
                  'assets/images/logoapp.png',
                  width: 200,
                  height: 200,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 16),

                // TEXT
                const Text(
                  'Resume Box',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
