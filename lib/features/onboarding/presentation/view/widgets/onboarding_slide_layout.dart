import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:clean_ops/features/onboarding/presentation/models/onboarding_slide_model.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_floating_brand_logo.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_primary_action_button.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_page_header.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_curved_hero_image.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_step_indicator.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomOnboardingSlide extends StatelessWidget {
  const CustomOnboardingSlide({
    required this.slide,
    required this.pageIndex,
    required this.pageCount,
    required this.onBack,
    required this.onSkip,
    required this.onContinue,
    super.key,
  });

  final OnboardingSlide slide;
  final int pageIndex;
  final int pageCount;
  final VoidCallback onBack;
  final VoidCallback onSkip;
  final VoidCallback onContinue;

  @override
  Widget build(BuildContext context) {
    final bottomInset = MediaQuery.viewPaddingOf(context).bottom;

    return LayoutBuilder(
      builder: (context, constraints) {
        final screenHeight = constraints.maxHeight;
        final isCompact = screenHeight < 780;
        final heroHeight = screenHeight * (isCompact ? 0.48 : 0.533);
        final contentTopSpacing = screenHeight * (isCompact ? 0.046 : 0.0592);
        final titleDescriptionSpacing =
            screenHeight * (isCompact ? 0.02 : 0.0213);
        final indicatorButtonSpacing =
            screenHeight * (isCompact ? 0.034 : 0.038);

        return Column(
          children: [
            SizedBox(
              width: double.infinity,
              height: heroHeight,
              child: Stack(
                fit: StackFit.expand,
                children: [
                  CustomOnboardingImage(
                    imagePath: slide.imageAsset,
                    fit: BoxFit.cover,
                  ),
                  const CustomOnboardingBrandLogo(),
                  CustomOnboardingHeader(
                    showBackButton: pageIndex > 0,
                    onBack: onBack,
                    onSkip: onSkip,
                  ),
                ],
              ),
            ),
            Expanded(
              child: Center(
                child: ConstrainedBox(
                  constraints: const BoxConstraints(maxWidth: 390),
                  child: Padding(
                    padding: EdgeInsetsDirectional.only(
                      top: contentTopSpacing,
                      bottom: bottomInset + (isCompact ? 8 : 12),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Text(
                          slide.title,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            color: AppColors.navy,
                            fontSize: 31,
                            height: 40 / 31,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(height: titleDescriptionSpacing),
                        Text(
                          slide.description,
                          textAlign: TextAlign.center,
                          style: GoogleFonts.plusJakartaSans(
                            color: const Color(0xFF1F2937),
                            fontSize: 15,
                            height: 23 / 15,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        CustomOnboardingPageIndicator(
                          currentPage: pageIndex,
                          pageCount: pageCount,
                        ),
                        SizedBox(height: indicatorButtonSpacing),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 26),
                          child: CustomOnboardingButton(
                            label: slide.actionLabel,
                            onPressed: onContinue,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
