import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

Widget circleBar(bool isActive) {
  return AnimatedContainer(
    duration: Duration(milliseconds: 200),
    margin: EdgeInsets.symmetric(horizontal: 8),
    height: 10,
    width: 10,
    decoration: BoxDecoration(
      color: isActive ? Colors.transparent : ColorPalette.mainColor,
      borderRadius: BorderRadius.all(
        Radius.circular(12),
      ),
      border: isActive ? Border.all(color: ColorPalette.mainColor) : null,
    ),
  );
}
