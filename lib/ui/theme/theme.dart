import 'package:flutter/material.dart';
import 'package:movie_app/ui/theme/colors/cinapp_colors.dart';
import 'text_styles.dart';

class MyTheme {
  static ThemeData get ligthTheme {
    return ThemeData(
      primarySwatch:
          CinappColors.createMaterialColor(CinappColors.primaryColor),
      colorScheme: CinappColors.lightScheme,
      fontFamily: AppTextStyle.fontFamily,
      textTheme: AppTextStyle.textTheme,
      cardTheme: const CardTheme(
        color: Colors.white,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey.shade500,
        selectedItemColor: CinappColors.lightScheme.primary,
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: const OutlineInputBorder(),
        fillColor: Colors.grey.shade300,
      ),
    );
  }

  // on DarkMode the Swatch parameter is not working
  // https://github.com/flutter/flutter/issues/19089
  static ThemeData get darkTheme {
    return ThemeData(
      primarySwatch:
          CinappColors.createMaterialColor(CinappColors.primaryColor),
      colorScheme: CinappColors.darkScheme,
      toggleableActiveColor: CinappColors.darkScheme.secondary,
      // this can all be copied, waiting for verification
      fontFamily: AppTextStyle.fontFamily,
      textTheme: AppTextStyle.textTheme.copyWith(
        bodyText1: AppTextStyle.bodytext1.copyWith(
          color: Colors.white70,
        ),
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        unselectedItemColor: Colors.grey.shade400,
        selectedItemColor: CinappColors.lightScheme.primary,
      ),
      // copy from ligthTheme
      inputDecorationTheme: ligthTheme.inputDecorationTheme,
    );
  }
}
