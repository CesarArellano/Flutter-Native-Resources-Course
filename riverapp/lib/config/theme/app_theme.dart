import 'package:flutter/material.dart';

const seedColor = Color.fromARGB(255, 7, 80, 59);

class AppTheme {
  static ThemeData get lightTheme => ThemeData(
    colorSchemeSeed: seedColor,
    listTileTheme: ListTileThemeData(
      iconColor: seedColor,
    )
  );
}