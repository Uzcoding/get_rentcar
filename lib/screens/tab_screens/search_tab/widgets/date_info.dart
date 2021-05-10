import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class SearchDateInfo extends StatelessWidget {
  final String title;
  final String dayNum;
  final String day;
  final String month;
  final String time;

  const SearchDateInfo({
    Key? key,
    required this.title,
    required this.dayNum,
    required this.day,
    required this.month,
    required this.time,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Text(
          title,
          style: TextStyles.searchTitle,
        ),
        const SizedBox(height: 15.0),
        Text(dayNum, style: TextStyles.searchDayNum),
        const SizedBox(height: 10.0),
        Text('$day | $month', style: TextStyles.searchDayAndMonth),
        const SizedBox(height: 5.0),
        Text(
          '$time AM',
          style: TextStyles.searchTitle,
        ),
      ],
    );
  }
}
