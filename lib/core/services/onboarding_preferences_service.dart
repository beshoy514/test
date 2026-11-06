import 'package:shared_preferences/shared_preferences.dart';

class CacheService {
  static const _onboardingSeenKey = 'onboarding_seen';
  final SharedPreferences _prefs;

  CacheService(this._prefs);

  bool get onboardingSeen => _prefs.getBool(_onboardingSeenKey) ?? false;

  Future<void> setOnboardingSeen() => _prefs.setBool(_onboardingSeenKey, true);
}
