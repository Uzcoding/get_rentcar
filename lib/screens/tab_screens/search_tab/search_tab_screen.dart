import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/tab_screens/search_tab/widgets/widgets.dart';
import 'package:get_rentcar/widgets/custom_behavior.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class SearchTabScreen extends StatefulWidget {
  @override
  _SearchTabScreenState createState() => _SearchTabScreenState();
}

class _SearchTabScreenState extends State<SearchTabScreen> {
  bool returnToSameLocation = false;

  @override
  Widget build(BuildContext context) {
    return ScrollConfiguration(
      behavior: CustomBehavior(),
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SearchTabTitle(),
              SizedBox(
                height: 50.0,
                child: TextField(
                  readOnly: true,
                  decoration: InputDecoration(
                    contentPadding: const EdgeInsets.all(18.0),
                    hintText: AppStrings.pickUpLocation,
                    suffixIcon: Image.asset(ImagePath.arrowDown),
                  ),
                ),
              ),
              returnToSameLocation
                  ? Container()
                  : Column(
                      children: <Widget>[
                        const SizedBox(height: 15.0),
                        SizedBox(
                          height: 50.0,
                          child: TextField(
                            readOnly: true,
                            decoration: InputDecoration(
                              contentPadding: const EdgeInsets.all(18.0),
                              hintText: AppStrings.returnLoaction,
                              suffixIcon: Image.asset(ImagePath.arrowDown),
                            ),
                          ),
                        ),
                      ],
                    ),
              const SizedBox(height: 20.0),
              SwitchListTile(
                contentPadding: EdgeInsets.zero,
                inactiveTrackColor: ColorPalette.inactiveTrackColor,
                activeTrackColor: ColorPalette.activeTrackColor,
                inactiveThumbColor: ColorPalette.inactiveThumbColor,
                activeColor: ColorPalette.mainColor,
                title: Text(
                  AppStrings.returnSameLocation,
                  style: TextStyle(color: ColorPalette.settingsGray),
                ),
                value: returnToSameLocation,
                onChanged: (value) {
                  returnToSameLocation = value;
                  setState(() {});
                },
              ),
              const SizedBox(height: 30.0),
              SearchCalendar(),
              const SizedBox(height: 30.0),
              FilledButton(
                title: AppStrings.search,
                size: double.infinity,
                onPressed: () {},
              ),
              const SizedBox(height: 50.0),
            ],
          ),
        ),
      ),
    );
  }
}
