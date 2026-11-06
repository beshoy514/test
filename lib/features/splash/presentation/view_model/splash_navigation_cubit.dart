import 'package:clean_ops/core/services/onboarding_preferences_service.dart';
import 'package:clean_ops/features/splash/presentation/view_model/splash_destination.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SplashCubit extends Cubit<SplashDestination?> {
  SplashCubit(this._cache) : super(null);

  final CacheService _cache;

  Future<void> decideDestination() async {
    await Future<void>.delayed(const Duration(milliseconds: 1500));
    if (isClosed) return;
    emit(
      _cache.onboardingSeen
          ? SplashDestination.home
          : SplashDestination.onboarding,
    );
  }
}
