import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:narad/config/constants/colors/colors.dart';

class DarkTheme {
  ThemeData call() {
    return ThemeData.dark().copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.sacaffoldColorDark,
      ),
      textTheme:
          GoogleFonts.sairaCondensedTextTheme(ThemeData.dark().textTheme),
      primaryColor: AppColors.primaryColor,
      scaffoldBackgroundColor: AppColors.sacaffoldColorDark,
      colorScheme: const ColorScheme.dark(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
      ),
    );
  }
}
