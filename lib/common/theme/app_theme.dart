import 'package:flutter/material.dart';
import 'package:from_css_color/from_css_color.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTheme {
  static final primaryColor = fromCssColor('#2B66BC');
  static final blueBackground = fromCssColor('#3C6AB2');
  static final primaryColorLight = fromCssColor('#3700B3');
  static final primaryColorDark = fromCssColor('#3700B3');
  static final secondaryColor = fromCssColor('#03DAC6');
  static final secondaryVariantColor = fromCssColor('#018786');
  static final backgroundColor = fromCssColor('#FFFFFF');
  static final surfaceColor = fromCssColor('#E5E5E533');
  static final errorColor = fromCssColor('#B00020');
  static final onPrimaryColor = fromCssColor('#B4B4B8');
  static final onSecondaryColor = fromCssColor('#000000');
  static final onBackgroundColor = fromCssColor('#000000');
  static final onSurfaceColor = fromCssColor('#000000');
  static final onErrorColor = fromCssColor('#FFFFFF');
  static final fontFamily = GoogleFonts.mulish().fontFamily;
  static const textTheme = TextTheme(
    displayLarge: TextStyle(fontSize: 96.0, fontWeight: FontWeight.w300, letterSpacing: -1.5),
    displayMedium: TextStyle(fontSize: 60.0, fontWeight: FontWeight.w300, letterSpacing: -0.5),
    displaySmall: TextStyle(fontSize: 48.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
    headlineMedium: TextStyle(fontSize: 34.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    headlineSmall: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w400, letterSpacing: 0.0),
    titleLarge: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500, letterSpacing: 0.15),
    titleMedium: TextStyle(fontSize: 17.0, fontWeight: FontWeight.w400, letterSpacing: 0.15),
    titleSmall: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w500, letterSpacing: 0.1),
    bodyLarge: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 0.5),
    bodyMedium: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w400, letterSpacing: 0.25),
    labelLarge: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, letterSpacing: 1.25),
    bodySmall: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w400, letterSpacing: 0.4),
    labelSmall: TextStyle(fontSize: 8.0, fontWeight: FontWeight.w400, letterSpacing: 1.5, color: Colors.black),
  );
}
