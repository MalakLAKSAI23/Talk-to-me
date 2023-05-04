import 'package:flutter/material.dart';

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    textTheme:const TextTheme(bodyText1: TextStyle(color: Colors.white)),
    brightness: Brightness.dark, // définir le brightness sur light
    backgroundColor: Colors.blue,
    scaffoldBackgroundColor: Colors.blue,

  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    backgroundColor: Colors.white,
    scaffoldBackgroundColor: Colors.white, // couleur de fond de l'écran principal
    brightness: Brightness.light, // définir le brightness sur light
  );
}
