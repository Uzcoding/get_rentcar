import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class AllProvidersCard extends StatelessWidget {
  const AllProvidersCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            offset: Offset(0, 3),
            blurRadius: 6.0,
          )
        ],
        color: Colors.white,
      ),
      child: Row(
        children: <Widget>[
          SvgPicture.asset(IconsPath.hertzBig),
          const SizedBox(width: 15.0),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Avris',
                style: const TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: ColorPalette.drawerText,
                ),
              ),
              Text(
                'Узбекистан - Ташкент',
                style: const TextStyle(
                  fontSize: 12.0,
                  color: const Color(0xFF919191),
                ),
              ),
              const SizedBox(height: 5.0),
              Row(
                children: <Widget>[
                  Icon(
                    Icons.star_rate_rounded,
                    color: ColorPalette.mainColor,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: ColorPalette.mainColor,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: ColorPalette.mainColor,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star_rate_rounded,
                    color: ColorPalette.mainColor,
                    size: 17.0,
                  ),
                  Icon(
                    Icons.star_border_rounded,
                    color: ColorPalette.mainColor,
                    size: 16.0,
                  ),
                ],
              ),
              const SizedBox(height: 17.0),
              Text(
                '60 автомобилей',
                style: const TextStyle(
                  fontSize: 13.0,
                  fontWeight: FontWeight.w600,
                  color: ColorPalette.black,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
