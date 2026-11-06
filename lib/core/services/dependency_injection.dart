import 'package:clean_ops/core/services/onboarding_preferences_service.dart';
import 'package:get_it/get_it.dart';
import 'package:shared_preferences/shared_preferences.dart';

final getIt = GetIt.instance;

Future<void> setupServiceLocator() async {
  final preferences = await SharedPreferences.getInstance();
  getIt.registerSingleton<CacheService>(CacheService(preferences));
}
