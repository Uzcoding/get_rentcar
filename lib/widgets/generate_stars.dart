import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

Row generateStars(int rate) {
  return Row(
    children: [
      Row(
        children: List.generate(
          rate,
          (index) {
            return Icon(
              Icons.star_rate_rounded,
              color: ColorPalette.mainColor,
              size: 17.0,
            );
          },
        ),
      ),
      rate < 5
          ? Row(
              children: List.generate(
                5 - rate,
                (index) => Icon(
                  Icons.star_border_rounded,
                  color: ColorPalette.mainColor,
                  size: 16.0,
                ),
              ),
            )
          : Container(),
    ],
  );
}
