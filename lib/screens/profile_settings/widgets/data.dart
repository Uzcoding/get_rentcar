import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class ProfileSettingsData extends StatelessWidget {
  final String subTitle;
  final String title;
  final Function onTap;

  const ProfileSettingsData({
    required this.subTitle,
    required this.title,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          subTitle,
          style: TextStyle(color: ColorPalette.settingsGray),
        ),
        GestureDetector(
          onTap: () => onTap,
          child: Container(
            margin: const EdgeInsets.only(bottom: 18.0, top: 25.0),
            padding: const EdgeInsets.only(bottom: 18.0),
            width: double.infinity,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  width: 2,
                  color: Color(0xFFE4E7F1),
                ),
              ),
            ),
            child: Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Color(0xFF091337),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
