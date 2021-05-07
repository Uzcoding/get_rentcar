import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class ProfileInput extends StatelessWidget {
  final String name;
  final String hint;
  final TextInputType inputType;

  const ProfileInput({
    required this.name,
    required this.hint,
    this.inputType = TextInputType.text,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(name),
        SizedBox(
          height: 40.0,
          child: TextField(
            keyboardType: inputType,
            cursorColor: Colors.black,
            decoration: InputDecoration(
              filled: false,
              contentPadding: EdgeInsets.zero,
              hintText: 'Введите $hint',
            ),
            style: TextStyle(
              color: ColorPalette.profileText,
              fontSize: 14.0,
            ),
          ),
        ),
      ],
    );
  }
}
