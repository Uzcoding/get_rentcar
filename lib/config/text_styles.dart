import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

abstract class TextStyles {
  static const TextStyle buttonText = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle title = const TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
    color: ColorPalette.black,
  );
  static const TextStyle profileTitle = const TextStyle(
    fontSize: 27.0,
    fontWeight: FontWeight.bold,
    color: ColorPalette.drawerText,
  );
  static const TextStyle transictionsContent = const TextStyle(
    fontSize: 18.0,
    fontWeight: FontWeight.bold,
    color: ColorPalette.drawerText,
  );
  static const TextStyle listTitle = const TextStyle(
    fontWeight: FontWeight.w600,
    fontSize: 22.0,
    color: ColorPalette.categoryTitle,
  );
  static const TextStyle cardTitle = const TextStyle(
    fontSize: 16.0,
    fontWeight: FontWeight.bold,
    color: ColorPalette.drawerText,
  );
  static const TextStyle countryAndCity = const TextStyle(
    fontSize: 12.0,
    color: ColorPalette.countryAndCity,
  );
}
