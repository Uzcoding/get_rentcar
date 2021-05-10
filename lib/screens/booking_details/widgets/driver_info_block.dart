import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class DriverInfoBlock extends StatelessWidget {
  const DriverInfoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.driverInfo,
          style: TextStyles.bookingTitle,
        ),
        const SizedBox(height: 20.0),
        Row(
          children: <Widget>[
            Text(
              '${AppStrings.name}: ',
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: ColorPalette.authGrey,
              ),
            ),
            Text(
              'Рафаэль',
              style: const TextStyle(
                color: ColorPalette.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(width: 40.0),
            Text(
              '${AppStrings.surName}: ',
              style: const TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.w500,
                color: ColorPalette.authGrey,
              ),
            ),
            Text(
              'Рафаэль',
              style: const TextStyle(
                color: ColorPalette.black,
                fontSize: 14.0,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        const SizedBox(height: 20.0),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: ColorPalette.authGrey,
            ),
            children: [
              TextSpan(text: '${AppStrings.email}: '),
              TextSpan(
                text: 'raphaelroytman2@mail.ru',
                style: const TextStyle(
                  color: ColorPalette.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 20.0),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: ColorPalette.authGrey,
            ),
            children: [
              TextSpan(text: '${AppStrings.phone}: '),
              TextSpan(
                text: '+998 93 555 55 55',
                style: const TextStyle(
                  color: ColorPalette.black,
                  fontSize: 14.0,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
