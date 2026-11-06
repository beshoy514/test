import 'package:clean_ops/features/onboarding/presentation/models/onboarding_slide_model.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_slide_layout.dart';
import 'package:flutter/material.dart';

class CustomOnboardingPageView extends StatelessWidget {
  const CustomOnboardingPageView({
    required this.controller,
    required this.slides,
    required this.onPageChanged,
    required this.onBack,
    required this.onSkip,
    required this.onContinue,
    super.key,
  });

  final PageController controller;
  final List<OnboardingSlide> slides;
  final ValueChanged<int> onPageChanged;
  final VoidCallback onBack;
  final VoidCallback onSkip;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      controller: controller,
      itemCount: slides.length,
      onPageChanged: onPageChanged,
      itemBuilder: (context, index) => CustomOnboardingSlide(
        slide: slides[index],
        pageIndex: index,
        pageCount: slides.length,
        onBack: onBack,
        onSkip: onSkip,
        onContinue: onContinue,
      ),
    );
  }
}
