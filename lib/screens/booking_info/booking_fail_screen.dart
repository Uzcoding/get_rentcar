import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class BookingFailScreen extends StatelessWidget {
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
                const SizedBox(height: 30.0),
                Icon(
                  Icons.cancel,
                  size: 130.0,
                  color: ColorPalette.mainColor,
                ),
                const SizedBox(height: 20.0),
                Center(
                  child: Column(
                    children: [
                      Text(
                        AppStrings.fail,
                        style: TextStyles.listTitle,
                      ),
                      const SizedBox(height: 10.0),
                      Text(
                        AppStrings.retry,
                        style: const TextStyle(
                          fontSize: 22.0,
                          color: const Color(0xFF757575),
                        ),
                      ),
                    ],
                  ),
                ),
                Spacer(),
                const SizedBox(height: 10.0),
                FilledButton(
                  title: AppStrings.home,
                  size: double.infinity,
                  onPressed: () => Navigator.pushNamedAndRemoveUntil(
                      context, Routes.home, (route) => false),
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
