import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    colorSchemeSeed: seedColor,
    listTileTheme: ListTileThemeData(
      iconColor: seedColor,
    ),
    textTheme: TextTheme(
      titleLarge: GoogleFonts.montserratAlternates(),
      titleMedium: GoogleFonts.russoOne(),
    ),
  );
}