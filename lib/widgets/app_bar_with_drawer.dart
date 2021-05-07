import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

AppBar getAppBarWithDrawer(GlobalKey<ScaffoldState> key) {
  return AppBar(
    leading: Padding(
      padding: const EdgeInsets.only(left: 10.0),
      child: IconButton(
        splashRadius: 20.0,
        icon: SvgPicture.asset(IconsPath.drawer),
        onPressed: () => key.currentState?.openDrawer(),
      ),
    ),
  );
}
