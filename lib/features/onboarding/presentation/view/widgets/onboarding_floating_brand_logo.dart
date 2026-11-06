import 'package:flutter/material.dart';

class CustomOnboardingBrandLogo extends StatelessWidget {
  const CustomOnboardingBrandLogo({super.key});

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.viewPaddingOf(context).top;

    return Positioned(
      top: topInset + 48,
      left: 0,
      right: 0,
      child: Center(
        child: Image.asset(
          'assets/images/brand/logo_horizontal.png',
          width: 150,
          height: 42,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
