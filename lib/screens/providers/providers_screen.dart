import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/all_providers_card.dart';

class ProvidersScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      drawer: CustomDrawer(),
      body: Column(
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
                hintText: ' Avis',
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
              AppStrings.providers,
              style: TextStyles.listTitle,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 10.0),
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 25.0)
                  .copyWith(bottom: 20.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AllProvidersCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
