import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class CarsScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      drawer: CustomDrawer(),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                height: 47.0,
                margin: const EdgeInsets.symmetric(
                  horizontal: 25.0,
                  vertical: 30.0,
                ),
                child: TextField(
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    hintText: 'Toyota Camri Y8',
                    suffixIcon: Padding(
                      padding: const EdgeInsets.only(right: 10.0),
                      child: SvgPicture.asset(
                        IconsPath.search,
                        fit: BoxFit.scaleDown,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 25.0, bottom: 30.0),
                child: Text(
                  AppStrings.cars,
                  style: TextStyles.listTitle,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: List.generate(
                    10,
                    (index) => AllCarCard(),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
