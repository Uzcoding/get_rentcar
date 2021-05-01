import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

abstract class TextStyles {
  static const TextStyle buttonText = const TextStyle(
    fontFamily: 'Montserrat',
    fontSize: 18.0,
    fontWeight: FontWeight.w600,
    color: Colors.white,
  );
  static const TextStyle title = const TextStyle(
    fontFamily: 'Montserrat',
    fontWeight: FontWeight.bold,
    fontSize: 28.0,
    color: ColorPalette.black,
  );
}
