import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/car_detail/widgets/included.dart';

class PriceIncludesBlock extends StatelessWidget {
  const PriceIncludesBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          AppStrings.priceIncludes,
          style: TextStyles.bookingTitle,
        ),
        const SizedBox(height: 20.0),
        Included(title: 'Внесения изменений'),
        const SizedBox(height: 10.0),
        Included(title: 'Покрытие на случай угона'),
        const SizedBox(height: 10.0),
        Included(title: 'Покрытие на случай ДТП'),
      ],
    );
  }
}
