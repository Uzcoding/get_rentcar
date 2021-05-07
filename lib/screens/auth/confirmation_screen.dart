import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/screens.dart';
import 'package:get_rentcar/widgets/widgets.dart';
import 'package:sms_autofill/sms_autofill.dart';

class ConfirmationScreen extends StatefulWidget {
  @override
  _ConfirmationScreenState createState() => _ConfirmationScreenState();
}

class _ConfirmationScreenState extends State<ConfirmationScreen> {
  TextEditingController codeController = TextEditingController();

  AppBar getAppBar() {
    return AppBar(
      leading: IconButton(
        padding: EdgeInsets.zero,
        splashRadius: 20.0,
        icon: Image.asset(ImagePath.arrow_back),
        onPressed: () => Navigator.pop(context),
      ),
    );
  }

  Container getCodeInput() {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 25.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 3.0,
          )
        ],
      ),
      child: TextFieldPinAutoFill(
        decoration: InputDecoration(
          filled: true,
          fillColor: ColorPalette.inputFilled,
          hintText: '123 456 789',
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 20.0,
          ),
          counterText: '',
        ),
        codeLength: 9,
      ),
    );
  }

  Row getSendCodeAgain() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          AppStrings.codeDidNotCome,
          style: TextStyle(
            fontFamily: 'Montserrat',
            fontSize: 14.0,
            color: ColorPalette.authGrey,
          ),
        ),
        const SizedBox(width: 5.0),
        InkWell(
          onTap: () => print('Code'),
          child: Text(
            AppStrings.sendAgain,
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 14.0,
              color: ColorPalette.mainColor,
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBar(),
      body: Container(
        margin:
            const EdgeInsets.symmetric(horizontal: 20.0).copyWith(top: 50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(AppStrings.confirmation, style: TextStyles.title),
            const SizedBox(height: 5.0),
            Text(
              AppStrings.confirmationCode,
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 14.0,
                fontWeight: FontWeight.w400,
                color: ColorPalette.authGrey,
              ),
            ),
            getCodeInput(),
            FilledButton(
              title: AppStrings.next,
              size: double.infinity,
              onPressed: () => Navigator.pushNamedAndRemoveUntil(
                  context, Routes.home, (route) => false),
            ),
            const SizedBox(height: 25.0),
            getSendCodeAgain()
          ],
        ),
      ),
    );
  }
}
