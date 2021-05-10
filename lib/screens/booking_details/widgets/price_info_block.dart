import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/booking_details/widgets/price_info.dart';

class PriceInfoBlock extends StatelessWidget {
  const PriceInfoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        BookingPriceInfo(
          title: 'Стоимость поездки',
          price: '450 000 / день',
        ),
        const SizedBox(height: 20.0),
        BookingPriceInfo(
          title: 'Дополнения',
          price: '350 000 / день',
        ),
        const SizedBox(height: 20.0),
        BookingPriceInfo(
          title: 'Итого за день',
          price: '800 000 / день',
        ),
      ],
    );
  }
}
