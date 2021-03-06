import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/widgets.dart';

class CarsTabItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomBehavior(),
      child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: [
                  SearchInput(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        AppStrings.cars,
                        style: TextStyles.listTitle,
                      ),
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Routes.cars),
                        child: Text(
                          AppStrings.seeAll,
                          style: TextStyle(
                            fontWeight: FontWeight.w400,
                            fontSize: 15.0,
                            color: ColorPalette.seeAll,
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25.0),
            CarsList(),
            const SizedBox(height: 40.0),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    AppStrings.providers,
                    style: TextStyles.listTitle,
                  ),
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Routes.providers),
                    child: Text(
                      AppStrings.seeAll,
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15.0,
                        color: ColorPalette.seeAll,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),
            ProvidersList(),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
