import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class DriverDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Image.asset(ImagePath.arrow_back)),
      ),
    );
  }
}
