import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomOnboardingButton extends StatelessWidget {
  const CustomOnboardingButton({
    required this.label,
    required this.onPressed,
    super.key,
  });

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 56,
      child: OutlinedButton(
        onPressed: onPressed,
        style:
            OutlinedButton.styleFrom(
              backgroundColor: AppColors.white,
              foregroundColor: AppColors.navy,
              side: const BorderSide(color: AppColors.orange, width: 1.5),
              shape: const StadiumBorder(),
              shadowColor: AppColors.orange.withValues(alpha: 0.24),
              elevation: 5,
              padding: const EdgeInsets.symmetric(horizontal: 24),
            ).copyWith(
              overlayColor: WidgetStatePropertyAll(
                AppColors.orange.withValues(alpha: 0.08),
              ),
            ),
        child: Text(
          label,
          style: const TextStyle(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),
    );
  }
}
