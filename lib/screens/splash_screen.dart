import 'dart:async';

import 'package:doctorq_clone/extesions/context_extension.dart';
import 'package:doctorq_clone/screens/onboarding_screen.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 3), () {
      context.navigator(const OnboardingScreen());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Container(
          color: Colors.white,
          child: Image.asset(
            'assets/logo.png',
            scale: 18,
          ),
        ),
      ),
    );
  }
}
