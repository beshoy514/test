import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomSplashTagline extends StatelessWidget {
  const CustomSplashTagline({super.key});

  @override
  Widget build(BuildContext context) {
    return Text(
      'Cleaner cities, every day',
      style: const TextStyle(
        color: AppColors.navy,
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
