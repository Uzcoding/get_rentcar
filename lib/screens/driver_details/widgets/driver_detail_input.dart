import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class DriverDetailInput extends StatelessWidget {
  final String title;
  final String hint;
  final TextInputType? type;

  const DriverDetailInput({
    Key? key,
    required this.title,
    required this.hint,
    this.type,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: const TextStyle(
            fontSize: 17.0,
          ),
        ),
        const SizedBox(height: 15.0),
        SizedBox(
          height: 40.0,
          child: TextField(
            keyboardType: type ?? TextInputType.text,
            cursorHeight: 20,
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
        Divider(
          thickness: 2.0,
          color: Colors.grey[200],
        ),
        const SizedBox(height: 15.0),
      ],
    );
  }
}
