import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/booking_details/widgets/date_info.dart';

class DateInfoBlock extends StatelessWidget {
  const DateInfoBlock({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        BookingDateInfo(
          date: 'Вт, 06 Март',
          time: '10:00 AM',
          city: 'Ташкент',
        ),
        Image.asset(
          ImagePath.arrowRight,
          width: 40.0,
        ),
        BookingDateInfo(
          date: 'Пт, 09 Март',
          time: '10:00 AM',
          city: 'Ташкент',
        ),
      ],
    );
  }
}
