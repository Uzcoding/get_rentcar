import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/driver_details/widgets/driver_detail_input.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/payment_row_inputs.dart';

class PaymentDetailsScreen extends StatefulWidget {
  @override
  _PaymentDetailsScreenState createState() => _PaymentDetailsScreenState();
}

class _PaymentDetailsScreenState extends State<PaymentDetailsScreen> {
  bool isChecked = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarOnlyBack(context),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 30.0, bottom: 50.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        AppStrings.paymentDetail,
                        style: TextStyles.profileTitle,
                      ),
                      Text(
                        AppStrings.enterCarDetail,
                        style: TextStyle(
                          fontSize: 14.0,
                          color: ColorPalette.authGrey,
                        ),
                      ),
                    ],
                  ),
                ),
                DriverDetailInput(
                  title: AppStrings.cardOwner,
                  hint: 'фио владелца карты',
                ),
                DriverDetailInput(
                  type: TextInputType.number,
                  title: AppStrings.cardNumber,
                  hint: 'номер карты',
                  suffix: SvgPicture.asset(IconsPath.visa),
                ),
                PaymentRowInputs(),
                CheckboxListTile(
                  activeColor: ColorPalette.mainColor,
                  contentPadding: EdgeInsets.zero,
                  controlAffinity: ListTileControlAffinity.leading,
                  value: isChecked,
                  title: Text(
                    AppStrings.saveCard,
                    style: const TextStyle(
                      fontSize: 13.0,
                    ),
                  ),
                  onChanged: (value) {
                    isChecked = value!;
                    setState(() {});
                  },
                ),
                const SizedBox(height: 50.0),
                FilledButton(
                  title: AppStrings.further,
                  size: double.infinity,
                  onPressed: () =>
                      Navigator.pushNamed(context, Routes.bookingDetail),
                ),
                const SizedBox(height: 50.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
