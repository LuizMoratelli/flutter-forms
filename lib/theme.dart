import 'package:flutter/material.dart';

ThemeData buildDarkTheme() {
  final ThemeData base = ThemeData.dark();
  final Color primaryColor = ThemeColors.green;
  final Color backgroundColor = ThemeColors.lightGray;
  return base.copyWith(
    backgroundColor: backgroundColor,
    primaryColor: primaryColor,
  );
}

final darkTheme = buildDarkTheme();

class ThemeColors {
  static const lightGray = Color.fromRGBO(224, 224, 224, 1.0);
  static const darkGray = Color.fromRGBO(43, 47, 69, 1.0);
  static const green = Color.fromRGBO(93, 207, 101, 1.0);
}
