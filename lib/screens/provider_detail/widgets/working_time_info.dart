import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class WorkingTimeInfo extends StatelessWidget {
  final String start;
  final String end;
  final int hour;
  const WorkingTimeInfo({
    Key? key,
    required this.start,
    required this.end,
    required this.hour,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Text(
          '$start-\n$end',
          style: const TextStyle(
            color: const Color(0xFF3D3D3F),
            fontSize: 16.0,
            fontWeight: FontWeight.w600,
          ),
        ),
        Text(
          '$hour часа',
          style: const TextStyle(
            color: ColorPalette.black,
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
