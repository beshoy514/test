import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomOnboardingSkipButton extends StatelessWidget {
  const CustomOnboardingSkipButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Material(
      color: AppColors.white,
      borderRadius: BorderRadius.circular(18),
      elevation: 3,
      shadowColor: const Color(0x330B2447),
      child: InkWell(
        borderRadius: BorderRadius.circular(18),
        onTap: onPressed,
        child: const Padding(
          padding: EdgeInsets.symmetric(horizontal: 13, vertical: 6),
          child: Text(
            'Skip',
            style: TextStyle(
              color: AppColors.navy,
              fontSize: 11,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    );
  }
}
