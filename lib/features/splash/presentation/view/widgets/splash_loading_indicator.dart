import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomSplashLoader extends StatelessWidget {
  const CustomSplashLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 26,
      height: 26,
      child: CircularProgressIndicator(
        strokeWidth: 2.5,
        color: AppColors.white,
      ),
    );
  }
}
