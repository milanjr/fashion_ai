import 'package:flutter/material.dart';

class ThemeProvider {
  static ThemeData light = themeData(
      seedColor: Colors.white,
      primary: Colors.blueAccent,
      surface: Colors.white,
      onSurface: Colors.black
  );

  static ThemeData dark = themeData(
      seedColor: Colors.white,
      primary: Colors.blueAccent,
      surface: Colors.white,
      onSurface: Colors.black
  );

  static ThemeData blue = themeData(
      seedColor: Colors.blueAccent,
      primary: Color(0xFF243B98),
      surface: Color(0xFFD6DBEF),
      onSurface: Color(0xFF243B98)
  );

  static ThemeData green = themeData(
      seedColor: Colors.greenAccent,
      primary: Color(0xFF249826),
      surface: Color(0xFFD6EFD7),
      onSurface: Color(0xFF249826)
  );

  static ThemeData orange = themeData(
      seedColor: Colors.orangeAccent,
      primary: Color(0xFFCA6818),
      surface: Color(0xFFECCEA7),
      onSurface: Color(0xFFCA6818)
  );

  static ThemeData christmas = themeData(
      seedColor: Colors.redAccent,
      primary: Color(0xFF3D9824),
      surface: Color(0xFFFF0A0A),
      onSurface: Color(0xFF25F306)
  );

  // Make named parameters for the following method
  static ThemeData themeData({required Color seedColor, required Color primary, required Color surface, required Color onSurface}) {
    return ThemeData(
      colorScheme: ColorScheme.fromSeed(
        seedColor: seedColor,
        primary: primary,
        surface: surface,
        onSurface: onSurface,
      ),
      useMaterial3: true,
    );
  }
}
