import 'package:clean_ops/core/routing/app_route_configuration.dart';
import 'package:clean_ops/core/services/dependency_injection.dart';
import 'package:clean_ops/core/theme/app_theme_configuration.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setSystemUIOverlayStyle(
    const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      statusBarIconBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.white,
      systemNavigationBarIconBrightness: Brightness.dark,
    ),
  );
  await setupServiceLocator();
  runApp(const CleanOpsApp());
}

class CleanOpsApp extends StatelessWidget {
  const CleanOpsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'CleanOps',
      theme: AppTheme.lightTheme,
      locale: const Locale('en'),
      supportedLocales: const [Locale('en')],
      routerConfig: AppRouter.router,
    );
  }
}
