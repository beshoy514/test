import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_back_navigation_button.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_skip_action_button.dart';
import 'package:flutter/material.dart';

class CustomOnboardingHeader extends StatelessWidget {
  const CustomOnboardingHeader({
    required this.showBackButton,
    required this.onBack,
    required this.onSkip,
    super.key,
  });

  final bool showBackButton;
  final VoidCallback onBack;
  final VoidCallback onSkip;

  @override
  Widget build(BuildContext context) {
    final topInset = MediaQuery.viewPaddingOf(context).top;

    return Positioned(
      top: topInset + 8,
      left: 18,
      right: 18,
      child: Row(
        children: [
          if (showBackButton)
            CustomOnboardingBackButton(onPressed: onBack)
          else
            const SizedBox(width: 34, height: 34),
          const Spacer(),
          CustomOnboardingSkipButton(onPressed: onSkip),
        ],
      ),
    );
  }
}
