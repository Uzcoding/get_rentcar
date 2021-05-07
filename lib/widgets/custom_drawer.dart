import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class CustomDrawer extends StatelessWidget {
  final Map<int, Map<String, dynamic>> drawerData = {
    0: {
      'icon': IconsPath.profile,
      'name': AppStrings.profile,
      'route': '/profile',
    },
    1: {
      'icon': IconsPath.bron,
      'name': AppStrings.bron,
      'route': '/profile',
    },
    2: {
      'icon': IconsPath.myReservations,
      'name': AppStrings.myReservations,
      'route': '/profile',
    },
    3: {
      'icon': IconsPath.myTransactions,
      'name': AppStrings.myTransactions,
      'route': '/profile',
    },
    4: {
      'icon': IconsPath.settings,
      'name': AppStrings.settings,
      'route': '/settings',
    },
    5: {
      'icon': IconsPath.logout,
      'name': AppStrings.logout,
      'route': '/profile',
    },
  };
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .9,
      height: size.height,
      color: ColorPalette.scaffoldBackground,
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Expanded(
              child: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  Padding(
                    padding: const EdgeInsets.all(25.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          AppStrings.welcome,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: ColorPalette.drawerText,
                          ),
                        ),
                        const SizedBox(height: 20.0),
                        Container(
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.grey.shade300,
                              width: 8.0,
                            ),
                            shape: BoxShape.circle,
                          ),
                          child: CircleAvatar(
                            radius: 40.0,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 2.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 30.0, top: 25.0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: List.generate(
                        drawerData.length,
                        (index) => ListTile(
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, Routes.profileSettings);
                          },
                          contentPadding: EdgeInsets.zero,
                          leading: SvgPicture.asset(
                            drawerData[index]!['icon']!,
                            width: 22.0,
                          ),
                          title: Text(
                            drawerData[index]!['name']!,
                            style: TextStyle(
                              fontSize: 17.0,
                              fontWeight: FontWeight.bold,
                              color: ColorPalette.drawerText,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(left: 30.0, bottom: 50.0, top: 10.0),
              child: Text(
                AppStrings.support,
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
