import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

abstract class AppTheme {
  static final ThemeData appTheme = ThemeData(
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: ColorPalette.inputFilled,
      hintStyle: TextStyle(
        color: ColorPalette.inputHint,
        fontSize: 15.0,
      ),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: const BorderRadius.all(
          const Radius.circular(10.0),
        ),
      ),
    ),
    fontFamily: 'Montserrat',
    appBarTheme: AppBarTheme(
      brightness: Brightness.light,
      backgroundColor: ColorPalette.scaffoldBackground,
      elevation: 0,
    ),
    primaryColor: ColorPalette.mainColor,
    scaffoldBackgroundColor: ColorPalette.scaffoldBackground,
  );

  static final BorderRadiusGeometry radius = BorderRadius.circular(20.0);
  static final List<BoxShadow> shadow = [
    BoxShadow(
      color: Colors.grey.shade200,
      offset: Offset(0, 3),
      blurRadius: 6.0,
    ),
  ];
}
