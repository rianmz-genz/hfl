import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ThemeCustom {
  ThemeCustom._();
  static ThemeData light = ThemeData(
    primaryColor: Colors.blueAccent,

    appBarTheme: const AppBarTheme(
      backgroundColor: Colors.white,
    ),
    visualDensity: VisualDensity.adaptivePlatformDensity,
    // Untuk menggunakan font Playground, tambahkan paket GoogleFonts dan uncomment
    fontFamily: FontFamily.josefin,
  );
}

class FontFamily {
  FontFamily._();
  static String? josefin = GoogleFonts.josefinSans().fontFamily;
  static String? font2 = GoogleFonts.nunito().fontFamily;
}

class FontSize {
  FontSize._();
  static double bigTitle1 = 22;
  static double bigTitle2 = 20;
  static double title = 16;
  static double smallTitle = 14;
  static double subtitle = 12;
  static double body = 12;
  static double caption = 10;
}

class AppColors {
  AppColors._();
  static Color transparent = Colors.transparent;
  static Color background = const Color(0XFFBDCBC2);
  static Color darkPrimary = const Color(0XFFDBCC95);
  static Color primary = const Color(0XFFFCF1DF);
  static Color greenPastel = const Color(0XFFC3E2C2);
  static Color redPastel = const Color(0XFFCD8D7A);
}
