import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class BookingSuccessScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Container(
            height: size.height,
            margin: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                const SizedBox(height: 50.0),
                Image.asset(ImagePath.bigCar),
                const SizedBox(height: 20.0),
                Image.asset(
                  ImagePath.checkBig,
                  width: 133.0,
                ),
                const SizedBox(height: 50.0),
                Center(
                  child: Text(
                    AppStrings.success,
                    style: TextStyles.listTitle,
                    textAlign: TextAlign.center,
                  ),
                ),
                Spacer(),
                Column(
                  children: <Widget>[
                    SizedBox(
                      width: double.infinity,
                      height: 50.0,
                      child: OutlinedButton(
                        style: OutlinedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          side: BorderSide(
                              width: 1, color: ColorPalette.mainColor),
                        ),
                        child: Text(
                          AppStrings.home,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.w600,
                            color: Colors.black,
                          ),
                        ),
                        onPressed: () => Navigator.pushNamedAndRemoveUntil(
                            context, Routes.home, (route) => false),
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    FilledButton(
                      title: AppStrings.downloadVoucher,
                      size: double.infinity,
                      onPressed: () =>
                          Navigator.pushNamed(context, Routes.bookingFail),
                    ),
                    const SizedBox(height: 40.0),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
