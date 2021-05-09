import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/driver_detail_input.dart';

class DriverDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () => Navigator.pop(context),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset(ImagePath.arrow_back),
          ),
        ),
      ),
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
                  child: Text(
                    AppStrings.driverDetail,
                    style: TextStyles.profileTitle,
                  ),
                ),
                Column(
                  children: <Widget>[
                    DriverDetailInput(
                      title: AppStrings.name,
                      hint: AppStrings.name.toLowerCase(),
                    ),
                    DriverDetailInput(
                      title: AppStrings.surName,
                      hint: AppStrings.surName.toLowerCase(),
                    ),
                    DriverDetailInput(
                      type: TextInputType.emailAddress,
                      title: AppStrings.email,
                      hint: 'почту',
                    ),
                    DriverDetailInput(
                      type: TextInputType.phone,
                      title: AppStrings.phone,
                      hint: AppStrings.phone.toLowerCase(),
                    ),
                  ],
                ),
                const SizedBox(height: 50.0),
                FilledButton(
                  title: AppStrings.confirm,
                  size: double.infinity,
                  onPressed: () {},
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
