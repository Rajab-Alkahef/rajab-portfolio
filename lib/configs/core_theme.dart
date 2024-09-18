import 'package:flutter/material.dart';

const fontFamily = 'Gilroy';

final themeLight = ThemeData(
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: Colors.lightBlue.withOpacity(0.4),
  ),
  primaryColorLight: const Color(0xff4374b9),
  brightness: Brightness.light,
  primaryColor: const Color(0xff4374b9),
  highlightColor: Colors.black,
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  // backgroundColor: Colors.white,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: Colors.white,
  colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.white, primarySwatch: Colors.red)
      .copyWith(
    secondary: Colors.black,
    brightness: Brightness.light,
  ),
);

final themeDark = ThemeData(
  textSelectionTheme: TextSelectionThemeData(
    selectionColor: Colors.lightBlue.withOpacity(0.4),
  ),
  brightness: Brightness.dark,
  primaryColorDark: const Color(0xff4374b9),
  primaryColor: const Color(0xff4374b9),
  highlightColor: const Color(0xff4374b9),
  canvasColor: Colors.white,
  fontFamily: fontFamily,
  splashColor: Colors.transparent,
  scaffoldBackgroundColor: const Color(0xff000322),
  colorScheme: ColorScheme.fromSwatch(
          backgroundColor: Colors.grey[800], primarySwatch: Colors.red)
      .copyWith(
        secondary: const Color(0xffC0392B),
        brightness: Brightness.dark,
      )
      .copyWith(surface: Colors.grey[800]),
);
