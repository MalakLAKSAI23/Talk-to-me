import 'package:flutter/material.dart';
import 'package:talktome/widgets/constants.dart';

class Themes {
  static ThemeData customDarkTheme = ThemeData.dark().copyWith(
    textTheme:const TextTheme(bodyText1: TextStyle(color: Colors.white),),
    primaryColor:myColor,
    brightness: Brightness.dark, // définir le brightness sur light
  );
  static ThemeData customLightTheme = ThemeData.light().copyWith(
    brightness: Brightness.light, // définir le brightness sur light
    primaryColor: myColor,
  );
}
