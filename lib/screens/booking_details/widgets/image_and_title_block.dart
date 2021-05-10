import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class ImageAndTitleBlock extends StatelessWidget {
  const ImageAndTitleBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget>[
        Image.asset(ImagePath.bigCar),
        const SizedBox(height: 30.0),
        Text(
          'Toyota Camri Y8',
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: ColorPalette.mainColor,
          ),
        ),
        const SizedBox(height: 20.0),
        HorizontalLine(),
      ],
    );
  }
}
