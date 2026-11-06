import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

class CustomOnboardingBackButton extends StatelessWidget {
  const CustomOnboardingBackButton({required this.onPressed, super.key});

  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return _OnboardingHeaderButton(
      onPressed: onPressed,
      size: 34,
      child: const Icon(
        Icons.arrow_back_ios_new_rounded,
        size: 15,
        color: AppColors.navy,
      ),
    );
  }
}

class _OnboardingHeaderButton extends StatelessWidget {
  const _OnboardingHeaderButton({
    required this.onPressed,
    required this.size,
    required this.child,
  });

  final VoidCallback onPressed;
  final double size;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size,
      child: Material(
        color: AppColors.white,
        shape: const CircleBorder(),
        elevation: 3,
        shadowColor: const Color(0x330B2447),
        child: InkWell(
          customBorder: const CircleBorder(),
          onTap: onPressed,
          child: Center(child: child),
        ),
      ),
    );
  }
}
