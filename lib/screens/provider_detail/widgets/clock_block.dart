import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

import 'working_time_info.dart';

class ClockBlock extends StatelessWidget {
  const ClockBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.workingHour,
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 50.0),
        WorkingTimeInfo(
          start: 'Понедельник',
          end: 'Пятница',
          hour: 24,
        ),
        const SizedBox(height: 30.0),
        WorkingTimeInfo(
          start: 'Суббота',
          end: 'Воскресенье',
          hour: 24,
        ),
      ],
    );
  }
}
