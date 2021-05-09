import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class CarProvider extends StatelessWidget {
  const CarProvider({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(25.0),
      padding: const EdgeInsets.symmetric(
        horizontal: 18.0,
        vertical: 15.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppTheme.radius,
        boxShadow: AppTheme.shadow,
      ),
      child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Image.asset(
                ImagePath.dreamCar,
                width: 34.0,
              ),
              const SizedBox(width: 15.0),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Dream Car',
                    style: TextStyles.cardTitle,
                  ),
                  Text(
                    'Узбекистан - Ташкент',
                    style: TextStyles.countryAndCity,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 20.0),
          Row(
            children: <Widget>[
              Icon(
                Icons.access_time,
                size: 16.0,
              ),
              const SizedBox(width: 5.0),
              Text(
                'Пн - Вс 24 часа',
                style: const TextStyle(
                  fontSize: 13.0,
                  color: Colors.black87,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
