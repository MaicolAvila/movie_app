import 'package:flutter/material.dart';

class CinappColors {
  /* Colores Primarios */
  static const Color purple1 = Color(0xff1F1A30);

  static const Color purple2 = Color(0xff39304D);

  static const Color sky1 = Color(0xff0DF6E3);

  static const Color white = Color(0xffffffff);

  static const Color gray1 = Color(0xff8a8a8a);

  static const Color purple3 = Color(0xff39304D);

  static const Color yellow = Color(0xffE9BE51);

  static const Color primaryColor = Color(0xff6292F4);
  static const Color darkPrimaryColor = Color(0xff3366C6);
  static const Color accentColor = Color(0xffe53766);
  static const Color textPrimaryColor = Color(0xFF212121);
  static const Color textSecondaryColor = Color(0xFF757575);
  static const Color accentColorDarkTheme = Color(0xFF9E9E9E);

  static MaterialColor createMaterialColor(Color color) {
    List strengths = <double>[.05];
    final swatch = <int, Color>{};
    final int r = color.red, g = color.green, b = color.blue;

    for (int i = 1; i < 10; i++) {
      strengths.add(0.1 * i);
    }
    for (var strength in strengths) {
      final double ds = 0.5 - strength;
      swatch[(strength * 1000).round()] = Color.fromRGBO(
        r + ((ds < 0 ? r : (255 - r)) * ds).round(),
        g + ((ds < 0 ? g : (255 - g)) * ds).round(),
        b + ((ds < 0 ? b : (255 - b)) * ds).round(),
        1,
      );
    }
    return MaterialColor(color.value, swatch);
  }

  static ColorScheme lightScheme = const ColorScheme.light(
    primary: primaryColor,
    primaryVariant: darkPrimaryColor,
    secondary: accentColor,
  );

  static ColorScheme darkScheme = const ColorScheme.dark(
    primary: primaryColor,
    primaryVariant: darkPrimaryColor,
    secondary: accentColor,
  );
}
