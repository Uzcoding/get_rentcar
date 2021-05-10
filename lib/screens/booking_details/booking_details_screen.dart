import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/booking_details/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class BookingDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarOnlyBack(context),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25.0),
                  child: Text(
                    AppStrings.bookingDetail,
                    style: const TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: ColorPalette.drawerText,
                    ),
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                ImageAndTitleBlock(),
                const SizedBox(height: 20.0),
                DateInfoBlock(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 15.0),
                PriceInfoBlock(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 20.0),
                PriceIncludesBlock(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 15.0),
                DeliveryCharge(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 15.0),
                LocationBlock(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 15.0),
                DriverInfoBlock(),
                const SizedBox(height: 15.0),
                HorizontalLine(),
                const SizedBox(height: 15.0),
                PaymentDetailInfoBlock(),
                const SizedBox(height: 40.0),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(
                      fontSize: 22.0,
                      fontWeight: FontWeight.w600,
                      color: ColorPalette.black,
                    ),
                    children: [
                      TextSpan(text: 'Итого к оплате: '),
                      TextSpan(
                        text: '2 000 000',
                        style: const TextStyle(
                          color: ColorPalette.mainColor,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40.0),
                FilledButton(
                  title: AppStrings.pay,
                  size: double.infinity,
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, Routes.bookingSuccess, (route) => false),
                ),
                const SizedBox(height: 40.0),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
