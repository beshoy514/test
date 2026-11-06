import 'package:clean_ops/core/routing/app_route_configuration.dart';
import 'package:clean_ops/core/services/dependency_injection.dart';
import 'package:clean_ops/features/onboarding/presentation/view/widgets/onboarding_screen_layout.dart';
import 'package:clean_ops/features/onboarding/presentation/view_model/onboarding_flow_cubit.dart';
import 'package:clean_ops/features/onboarding/presentation/view_model/onboarding_progress_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class OnboardingView extends StatelessWidget {
  const OnboardingView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OnboardingCubit(getIt()),
      child: BlocListener<OnboardingCubit, OnboardingState>(
        listenWhen: (previous, current) =>
            !previous.completed && current.completed,
        listener: (context, state) => context.go(AppRouter.kHomeView),
        child: const OnboardingViewBody(),
      ),
    );
  }
}
