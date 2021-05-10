import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class BookingDateInfo extends StatelessWidget {
  final String date;
  final String time;
  final String city;

  const BookingDateInfo({
    Key? key,
    required this.date,
    required this.time,
    required this.city,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          date,
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 17.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          time,
          style: const TextStyle(
            color: ColorPalette.mainColor,
            fontWeight: FontWeight.w500,
            fontSize: 14.0,
          ),
        ),
        Text(
          city,
          style: const TextStyle(
            fontSize: 14.0,
            color: ColorPalette.authGrey,
          ),
        ),
      ],
    );
  }
}
