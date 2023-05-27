import 'package:flutter/material.dart';

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    textTheme:const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    brightness: Brightness.dark, // définir le brightness sur light

  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light, // définir le brightness sur light
  );
}
