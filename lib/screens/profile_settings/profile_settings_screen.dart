import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/profile_settings/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class ProfileSettingsScreen extends StatefulWidget {
  @override
  _ProfileSettingsScreenState createState() => _ProfileSettingsScreenState();
}

class _ProfileSettingsScreenState extends State<ProfileSettingsScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  bool notificationEnabled = false;
  bool geoEnabled = false;
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
                  margin: const EdgeInsets.only(top: 30.0, bottom: 40.0),
                  child: Text(
                    AppStrings.settings,
                    style: TextStyles.profileTitle,
                  ),
                ),
                Column(
                  children: <Widget>[
                    ProfileSettingsData(
                      subTitle: AppStrings.language,
                      title: AppStrings.ru,
                      onTap: () {},
                    ),
                    ProfileSettingsData(
                      subTitle: AppStrings.currency,
                      title: AppStrings.uzs,
                      onTap: () {},
                    ),
                  ],
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  inactiveTrackColor: ColorPalette.inactiveTrackColor,
                  activeTrackColor: ColorPalette.activeTrackColor,
                  inactiveThumbColor: ColorPalette.inactiveThumbColor,
                  activeColor: ColorPalette.mainColor,
                  title: Text(
                    AppStrings.accessGeo,
                    style: TextStyle(color: ColorPalette.settingsGray),
                  ),
                  value: notificationEnabled,
                  onChanged: (value) {
                    notificationEnabled = value;
                    setState(() {});
                  },
                ),
                SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  inactiveTrackColor: ColorPalette.inactiveTrackColor,
                  activeTrackColor: ColorPalette.activeTrackColor,
                  inactiveThumbColor: ColorPalette.inactiveThumbColor,
                  activeColor: ColorPalette.mainColor,
                  title: Text(
                    AppStrings.accessNotification,
                    style: TextStyle(color: ColorPalette.settingsGray),
                  ),
                  value: geoEnabled,
                  onChanged: (value) {
                    geoEnabled = value;
                    setState(() {});
                  },
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
