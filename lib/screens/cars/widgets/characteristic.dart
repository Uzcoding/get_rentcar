import 'package:flutter/material.dart';

RichText buildCharacteristic({
  required String info,
  required String value,
  double? fontSize,
}) {
  return RichText(
    text: TextSpan(
      style: TextStyle(
        color: const Color(0xFF777781),
        fontSize: fontSize ?? 12.0,
      ),
      children: [
        TextSpan(text: '$info '),
        TextSpan(
          text: value,
          style: const TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    ),
  );
}
