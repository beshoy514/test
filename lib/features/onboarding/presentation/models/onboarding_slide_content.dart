import 'package:clean_ops/features/onboarding/presentation/models/onboarding_slide_model.dart';

List<OnboardingSlide> getOnboardingSlides() => [
  OnboardingSlide(
    imageAsset: 'assets/images/onboarding_community.png',
    title: 'Welcome to\nCleanOps!',
    description:
        'Your community, cleaner together.\n'
        'Join us in transforming your\n'
        'neighborhood one report at a time.',
    actionLabel: 'Next',
  ),
  OnboardingSlide(
    imageAsset: 'assets/images/onboarding_report.png',
    title: 'Snap a Photo\nof the Problem',
    description:
        'Help your community identify areas\n'
        'in need. Simply capture the waste and\n'
        'its location to get it resolved quickly.',
    actionLabel: 'Next',
  ),
  OnboardingSlide(
    imageAsset: 'assets/images/onboarding_trust.png',
    title: 'See Your Verified\nContribution',
    description:
        'Get confirmation as your reported issue\n'
        'is verified and marked for collection,\n'
        'contributing to a cleaner city.',
    actionLabel: 'Get Started',
  ),
];
