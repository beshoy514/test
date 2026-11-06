import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:clean_ops/features/onboarding/presentation/models/onboarding_slide_content.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_swipe_pager.dart';
import 'package:clean_ops/features/onboarding/presentation/view_model/onboarding_flow_cubit.dart';
import 'package:clean_ops/features/onboarding/presentation/view_model/onboarding_progress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingViewBody extends StatefulWidget {
  const OnboardingViewBody({super.key});

  @override
  State<OnboardingViewBody> createState() => _OnboardingViewBodyState();
}

class _OnboardingViewBodyState extends State<OnboardingViewBody> {
  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  Future<void> _goBack(int currentPage) async {
    if (currentPage > 0) {
      await _pageController.previousPage(
        duration: const Duration(milliseconds: 250),
        curve: Curves.easeOut,
      );
    }
  }

  Future<void> _continue(int currentPage, int pageCount) async {
    if (currentPage == pageCount - 1) {
      await context.read<OnboardingCubit>().completeOnboarding();
      return;
    }

    await _pageController.nextPage(
      duration: const Duration(milliseconds: 280),
      curve: Curves.easeOut,
    );
  }

  @override
  Widget build(BuildContext context) {
    final slides = getOnboardingSlides();
    final cubit = context.read<OnboardingCubit>();

    return Scaffold(
      backgroundColor: AppColors.white,
      body: BlocBuilder<OnboardingCubit, OnboardingState>(
        builder: (context, state) => CustomOnboardingPageView(
          controller: _pageController,
          slides: slides,
          onPageChanged: cubit.setPage,
          onBack: () => _goBack(state.currentPage),
          onSkip: cubit.completeOnboarding,
          onContinue: () => _continue(state.currentPage, slides.length),
        ),
      ),
    );
  }
}
