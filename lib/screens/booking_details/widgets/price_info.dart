import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class BookingPriceInfo extends StatelessWidget {
  final String title;
  final String price;

  const BookingPriceInfo({
    Key? key,
    required this.title,
    required this.price,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          title,
          style: TextStyles.bookingTitle,
        ),
        Text(
          price,
          style: const TextStyle(
            color: ColorPalette.authGrey,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
      ],
    );
  }
}
