
import 'package:flutter/material.dart';

class MyTheme {

  static Color myColor = Colors.cyan;
  static ThemeData darkTheme = ThemeData(
    colorSchemeSeed: myColor,
    brightness: Brightness.dark,
    useMaterial3: true,
  );
  static ThemeData lightTheme = ThemeData(
    colorSchemeSeed: myColor,
    useMaterial3: true,
  );
}