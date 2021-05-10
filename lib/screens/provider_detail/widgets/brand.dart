import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class ProviderDetailBrand extends StatelessWidget {
  const ProviderDetailBrand({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Image.asset(ImagePath.dreamCar),
        const SizedBox(height: 20.0),
        generateStars(
          4,
          size: 30.0,
          align: MainAxisAlignment.center,
        ),
      ],
    );
  }
}
