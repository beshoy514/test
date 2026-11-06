import 'package:clean_ops/features/onboarding/presentation/view/onboarding_screen.dart';
import 'package:clean_ops/features/splash/presentation/view/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

abstract class AppRouter {
  static const kOnboardingView = '/onboarding';
  static const kHomeView = '/home';

  static final GoRouter router = GoRouter(
    routes: [
      GoRoute(path: '/', builder: (context, state) => const SplashView()),
      GoRoute(
        path: kOnboardingView,
        builder: (context, state) => const OnboardingView(),
      ),
      GoRoute(
        path: kHomeView,
        builder: (context, state) =>
            const Scaffold(body: Center(child: Text('CleanOps'))),
      ),
    ],
  );
}
