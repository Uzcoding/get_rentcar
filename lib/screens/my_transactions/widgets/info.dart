import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class TransactionInfo extends StatelessWidget {
  final int id;
  final String price;
  final String date;

  const TransactionInfo({
    required this.id,
    required this.price,
    required this.date,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          width: 90.0,
          height: 60.0,
          decoration: BoxDecoration(
            color: ColorPalette.tranactionsCarBg,
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Center(
            child: SvgPicture.asset(
              IconsPath.tabCar,
              color: ColorPalette.mainColor,
            ),
          ),
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'ID $id',
              style: TextStyles.transictionsContent,
            ),
            Text(
              date,
              style: TextStyle(
                color: ColorPalette.settingsGray,
                fontSize: 13.0,
              ),
            ),
          ],
        ),
        Flexible(
          child: Text(
            '- $price сум',
            style: TextStyle(
              color: ColorPalette.red,
              fontSize: 22.0,
              fontWeight: FontWeight.w600,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ),
      ],
    );
  }
}
