import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

int? selectedIndex = 0;

class CustomDrawer extends StatefulWidget {
  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  final Map<int, Map<String, dynamic>> drawerData = {
    0: {
      'icon': IconsPath.profile,
      'name': AppStrings.profile,
      'route': Routes.profile,
    },
    1: {
      'icon': IconsPath.myReservations,
      'name': AppStrings.myReservations,
      'route': Routes.myReservations,
    },
    2: {
      'icon': IconsPath.myTransactions,
      'name': AppStrings.myTransactions,
      'route': Routes.myTransactions,
    },
    3: {
      'icon': IconsPath.settings,
      'name': AppStrings.settings,
      'route': Routes.profileSettings,
    },
    4: {
      'icon': IconsPath.logout,
      'name': AppStrings.logout,
      'route': '',
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
                    padding: const EdgeInsets.all(25.0).copyWith(right: 5.0),
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
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  color: Colors.grey.shade300,
                                  width: 8.0,
                                ),
                                shape: BoxShape.circle,
                              ),
                              child: CircleAvatar(
                                radius: 32.0,
                                backgroundImage: AssetImage(ImagePath.user),
                              ),
                            ),
                            const SizedBox(width: 10.0),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  width: size.width * .5,
                                  child: Text(
                                    'Дмитрий Пономарев',
                                    style: const TextStyle(
                                      color: ColorPalette.drawerText,
                                      fontSize: 15.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                ),
                                const SizedBox(height: 10.0),
                                Text(
                                  'ID: 425',
                                  style: const TextStyle(
                                    color: ColorPalette.drawerText,
                                    fontSize: 13.0,
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                            // if (selectedIndex != index) {
                            // selectedIndex = index;
                            drawerData[index]!['route']! != ''
                                ? Navigator.popAndPushNamed(
                                    context, drawerData[index]!['route']!)
                                : print('no route');
                            // } else {
                            //   Navigator.pop(context);
                            // }
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
                  const EdgeInsets.only(left: 30.0, bottom: 25.0, top: 10.0),
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
