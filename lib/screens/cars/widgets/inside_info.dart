import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Row carInsideInfo({
  int? count,
  required double iconSize,
  required String icon,
}) {
  return Row(
    children: <Widget>[
      count == null
          ? Container()
          : Text(
              count.toString(),
              style: const TextStyle(
                color: const Color(0xFF050606),
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
              ),
            ),
      const SizedBox(width: 5.0),
      SvgPicture.asset(
        icon,
        width: iconSize,
      ),
    ],
  );
}
