import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class FilledButton extends StatelessWidget {
  final Function onPressed;
  final String title;
  final double size;
  FilledButton({
    required this.title,
    required this.size,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: 50.0,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          primary: ColorPalette.mainColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        onPressed: () {
          onPressed();
        },
        child: Text(
          title,
          style: TextStyles.buttonText,
        ),
      ),
    );
  }
}
