import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class SignUpScreen extends StatelessWidget {
  // final TextEditingController controller = TextEditingController();

  Container getIntlPhoneFormField() {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(
            width: 1.0,
            color: ColorPalette.authGrey,
          ),
        ),
      ),
      child: Stack(
        children: [
          IntlPhoneField(
            autofocus: true,
            autoValidate: false,
            decoration: InputDecoration(
              border: InputBorder.none,
              focusedBorder: InputBorder.none,
              enabledBorder: InputBorder.none,
              errorBorder: InputBorder.none,
              disabledBorder: InputBorder.none,
              contentPadding: EdgeInsets.zero,
              counterText: '',
            ),
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 23.0,
              fontWeight: FontWeight.bold,
            ),
            initialCountryCode: 'UZ',
            showDropdownIcon: false,
            showCustomIcon: true,
            customIcon: Icons.keyboard_arrow_down,
            customIconColor: Color(0xFF343434),
            onChanged: (phone) {
              print(phone.completeNumber);
            },
          ),
        ],
      ),
    );
  }

  Container getUserAgreement() {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(
        top: 40.0,
        bottom: 36.0,
      ),
      child: Text(
        AppStrings.userAgreement,
        style: TextStyle(
          fontFamily: 'Montserrat',
          fontSize: 12.0,
          fontWeight: FontWeight.w400,
          color: ColorPalette.authGrey,
        ),
        textAlign: TextAlign.center,
      ),
    );
  }

  Center getNextButton(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          Navigator.pushNamed(context, Routes.confirmation);
        },
        child: Text(
          AppStrings.further,
          style: const TextStyle(
            fontFamily: 'Montserrat',
            fontWeight: FontWeight.bold,
            fontSize: 26.0,
            color: ColorPalette.mainColor,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(brightness: Brightness.light),
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 22.0)
                .copyWith(top: 100.0),
            child: SafeArea(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(AppStrings.auth, style: TextStyles.title),
                  const SizedBox(height: 5.0),
                  Text(
                    AppStrings.yourPhoneNumber,
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      fontWeight: FontWeight.w400,
                      color: ColorPalette.authGrey,
                    ),
                  ),
                  const SizedBox(height: 20.0),
                  getIntlPhoneFormField(),
                  getUserAgreement(),
                  getNextButton(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
