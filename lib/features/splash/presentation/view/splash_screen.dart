import 'package:clean_ops/core/routing/app_route_configuration.dart';
import 'package:clean_ops/core/services/dependency_injection.dart';
import 'package:clean_ops/features/splash/presentation/view/widgets/splash_screen_layout.dart';
import 'package:clean_ops/features/splash/presentation/view_model/splash_navigation_cubit.dart';
import 'package:clean_ops/features/splash/presentation/view_model/splash_destination.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SplashCubit(getIt())..decideDestination(),
      child: BlocListener<SplashCubit, SplashDestination?>(
        listener: (context, destination) {
          if (destination == SplashDestination.onboarding) {
            context.go(AppRouter.kOnboardingView);
          } else if (destination == SplashDestination.home) {
            context.go(AppRouter.kHomeView);
          }
        },
        child: const SplashViewBody(),
      ),
    );
  }
}
