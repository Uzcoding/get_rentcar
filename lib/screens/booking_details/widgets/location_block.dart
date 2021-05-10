import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class LocationBlock extends StatelessWidget {
  const LocationBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.supplierLocation,
          style: TextStyles.bookingTitle,
        ),
        const SizedBox(height: 25.0),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Ташкент,\nЧиланзарский район',
                  style: const TextStyle(
                    fontSize: 13.0,
                    color: const Color(0xFF201E1E),
                  ),
                ),
                const SizedBox(height: 15.0),
                Text(
                  AppStrings.workingTime,
                  style: const TextStyle(
                    fontSize: 13.0,
                    fontWeight: FontWeight.w500,
                    color: const Color(0xFF2E2E2E),
                  ),
                ),
                Text(
                  'Пн - Вс 24 часа',
                  style: const TextStyle(
                    fontSize: 13.0,
                    color: ColorPalette.authGrey,
                  ),
                ),
              ],
            ),
            Container(
              width: 142.0,
              height: 132.0,
              color: Colors.red,
            )
          ],
        ),
      ],
    );
  }
}
