import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class PaymentDetailInfoBlock extends StatelessWidget {
  const PaymentDetailInfoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.paymentDetails,
          style: TextStyles.bookingTitle,
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
              TextSpan(text: 'Ф.И.О.: '),
              TextSpan(
                text: 'Ройтман Рафаэль Евгеньевич',
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
        const SizedBox(height: 15.0),
        Row(
          children: <Widget>[
            RichText(
              text: TextSpan(
                style: const TextStyle(
                  fontSize: 14.0,
                  fontWeight: FontWeight.w500,
                  color: ColorPalette.authGrey,
                ),
                children: [
                  TextSpan(text: 'Номер карты: '),
                  TextSpan(
                    text: '7777 7777 7777 7777',
                    style: const TextStyle(
                      color: ColorPalette.black,
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(width: 20.0),
            SvgPicture.asset(IconsPath.visa),
          ],
        ),
        const SizedBox(height: 15.0),
        RichText(
          text: TextSpan(
            style: const TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.w500,
              color: ColorPalette.authGrey,
            ),
            children: [
              TextSpan(text: 'Срок действия: '),
              TextSpan(
                text: '09.2020',
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
