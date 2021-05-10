import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class DeliveryCharge extends StatelessWidget {
  const DeliveryCharge({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          AppStrings.deliveryCharge,
          style: TextStyles.bookingTitle,
        ),
        Text(
          AppStrings.free,
          style: const TextStyle(
            color: ColorPalette.mainColor,
            fontWeight: FontWeight.w600,
            fontSize: 16.0,
          ),
        ),
      ],
    );
  }
}
