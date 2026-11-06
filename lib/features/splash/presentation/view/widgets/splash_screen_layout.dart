import 'package:clean_ops/features/splash/presentation/view/widgets/splash_background_layer.dart';
import 'package:clean_ops/features/splash/presentation/view/widgets/splash_loading_indicator.dart';
import 'package:clean_ops/features/splash/presentation/view/widgets/splash_brand_logo.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Stack(
          fit: StackFit.expand,
          children: [
            const CustomSplashBackground(),
            SafeArea(
              child: Column(
                children: [
                  const Spacer(flex: 3),
                  const CustomSplashLogo(),
                  const Spacer(flex: 6),
                  const CustomSplashLoader(),
                  const SizedBox(height: 26),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
