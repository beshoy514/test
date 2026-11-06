import 'package:flutter/material.dart';

class CustomSplashBackground extends StatelessWidget {
  const CustomSplashBackground({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          'assets/images/splash_background.png',
          fit: BoxFit.cover,
          alignment: Alignment.center,
        ),
        const DecoratedBox(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              colors: [Color(0x08FFFFFF), Color(0x6607365C)],
            ),
          ),
        ),
      ],
    );
  }
}
