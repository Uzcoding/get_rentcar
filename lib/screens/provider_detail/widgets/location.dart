import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class Location extends StatelessWidget {
  const Location({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.location,
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 40.0),
        Text(
          'Чиланзарский район,\n10 кв',
          textAlign: TextAlign.center,
          style: const TextStyle(
            color: const Color(0xFF67686B),
            fontSize: 14.0,
          ),
        ),
        const SizedBox(height: 20.0),
        Image.asset(ImagePath.map),
        const SizedBox(height: 40.0),
      ],
    );
  }
}
