import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/cars/widgets/widgets.dart';

class CarCharacteristic extends StatelessWidget {
  final Map<int, Map<String, String>> characterData = {
    0: {
      'info': 'Залог',
      'value': '2 000 000 сум',
    },
    1: {
      'info': 'Лимит пробега:',
      'value': '200 Км',
    },
    2: {
      'info': 'Стаж вождения от:',
      'value': '3 лет',
    },
    3: {
      'info': 'Возраст:',
      'value': 'от 21 года',
    },
    4: {
      'info': 'Получение:',
      'value': 'Полный бак',
    },
    5: {
      'info': 'Возврат:',
      'value': 'Полный бак',
    },
  };
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 30.0,
        vertical: 20.0,
      ).copyWith(top: 60.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(
          characterData.length,
          (index) => Padding(
            padding: const EdgeInsets.only(bottom: 15.0),
            child: buildCharacteristic(
                fontSize: 15.0,
                info: characterData[index]!['info']!,
                value: characterData[index]!['value']!),
          ),
        ),
      ),
    );
  }
}
