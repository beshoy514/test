import 'package:flutter/material.dart';

class CustomSplashLogo extends StatelessWidget {
  const CustomSplashLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      'assets/images/brand/logo_full.png',
      width: 180,
      height: 190,
      fit: BoxFit.contain,
    );
  }
}
