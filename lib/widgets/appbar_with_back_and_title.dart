import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

AppBar getAppBarWithBackAndTitle(
  BuildContext context,
  String title,
) {
  return AppBar(
    leading: GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Padding(
        padding: const EdgeInsets.only(left: 15.0),
        child: Image.asset(
          ImagePath.arrow_back,
        ),
      ),
    ),
    centerTitle: true,
    title: Text(
      title,
      style: const TextStyle(
        fontSize: 22.0,
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    ),
  );
}
