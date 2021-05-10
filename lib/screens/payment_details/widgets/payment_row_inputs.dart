import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class PaymentRowInputs extends StatelessWidget {
  const PaymentRowInputs({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AppStrings.expirationDate,
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 40.0,
                child: TextField(
                  keyboardType: TextInputType.number,
                  cursorHeight: 20,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    filled: false,
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Введите cрок окончания',
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
          ),
        ),
        const SizedBox(width: 30.0),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                AppStrings.cvv,
                style: const TextStyle(
                  fontSize: 17.0,
                ),
              ),
              const SizedBox(height: 15.0),
              SizedBox(
                height: 40.0,
                child: TextField(
                  keyboardType: TextInputType.number,
                  obscureText: true,
                  obscuringCharacter: '*',
                  cursorHeight: 20,
                  cursorColor: Colors.black,
                  decoration: InputDecoration(
                    suffixIcon: SvgPicture.asset(
                      IconsPath.question,
                      fit: BoxFit.scaleDown,
                    ),
                    filled: false,
                    contentPadding: EdgeInsets.zero,
                    hintText: 'Введите секретный код',
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
          ),
        ),
      ],
    );
  }
}
