import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narad/config/constants/colors/colors.dart';

class LightTheme {
  ThemeData call() {
    return ThemeData.light().copyWith(
      primaryColor: AppColors.primaryColor,
      textTheme:
          GoogleFonts.sairaCondensedTextTheme(ThemeData.light().textTheme),
      scaffoldBackgroundColor: AppColors.scaffoldColorLight,
      colorScheme: const ColorScheme.light(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
      ),
    );
  }
}
