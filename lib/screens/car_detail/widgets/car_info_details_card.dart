import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class CarInfoDetailsCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 15.0,
        vertical: 12.0,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: AppTheme.shadow,
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(
            IconsPath.armchair,
            width: 25.0,
          ),
          const SizedBox(width: 15.0),
          Text(
            '5 сидений',
            style: const TextStyle(
              fontSize: 15.0,
              color: Color(0xFF050606),
              fontWeight: FontWeight.w500,
            ),
          )
        ],
      ),
    );
  }
}
