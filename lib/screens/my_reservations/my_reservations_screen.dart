import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class MyReservationsScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  margin: const EdgeInsets.only(top: 30.0, bottom: 50.0),
                  child: Text(
                    AppStrings.myReservations,
                    style: TextStyles.profileTitle,
                  ),
                ),
                Text(
                  AppStrings.numberReservation,
                  style: TextStyle(
                    color: ColorPalette.settingsGray,
                  ),
                ),
                Container(
                  height: 47.0,
                  margin: const EdgeInsets.only(top: 15.0, bottom: 35.0),
                  child: TextField(
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      hintText: AppStrings.numberReservation,
                    ),
                  ),
                ),
                FilledButton(
                  onPressed: () {},
                  title: AppStrings.addReservation,
                  size: double.infinity,
                ),
              ],
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
