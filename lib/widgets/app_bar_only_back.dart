import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

AppBar appBarOnlyBack(BuildContext context) {
  return AppBar(
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Image.asset(ImagePath.arrow_back),
      ),
    ),
  );
}
