import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class Included extends StatelessWidget {
  final String title;

  const Included({required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            color: Color(0xFF8D8D8D),
          ),
        ),
        SvgPicture.asset(IconsPath.checkMark),
      ],
    );
  }
}
