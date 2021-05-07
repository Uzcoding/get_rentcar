import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class ProfileInfo extends StatelessWidget {
  const ProfileInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 25.0, bottom: 35.0),
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            'Рафаэль Ройтман',
            style: const TextStyle(
              color: ColorPalette.profileText,
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(height: 10.0),
          Text(
            'Узбекистан, Ташкент',
            style: const TextStyle(
              color: ColorPalette.settingsGray,
              fontSize: 15.0,
            ),
          ),
        ],
      ),
    );
  }
}
