import 'package:clean_ops/core/constants/brand_colors.dart';
import 'package:flutter/material.dart';

abstract class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    scaffoldBackgroundColor: AppColors.white,
    colorScheme: ColorScheme.fromSeed(
      seedColor: AppColors.green,
      primary: AppColors.green,
      secondary: AppColors.orange,
      surface: AppColors.white,
    ),
    fontFamily: 'Roboto',
  );
}
