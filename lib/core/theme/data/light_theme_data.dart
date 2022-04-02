import 'package:flutter/material.dart';
import 'package:narad/config/constants/colors/colors.dart';

class LightTheme {
  ThemeData call() {
    return ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.scaffoldColorLight,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
      ),
    );
  }
}
