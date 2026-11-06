import 'package:clean_ops/core/services/onboarding_preferences_service.dart';
import 'package:clean_ops/features/onboarding/presentation/view_model/onboarding_progress_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit(this._cache) : super(const OnboardingState());

  static const pageCount = 3;
  final CacheService _cache;

  void setPage(int page) {
    if (page >= 0 && page < pageCount && page != state.currentPage) {
      emit(state.copyWith(currentPage: page));
    }
  }

  Future<void> completeOnboarding() async {
    await _cache.setOnboardingSeen();
    if (!isClosed) emit(state.copyWith(completed: true));
  }
}
