import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class CarsTabItem extends StatelessWidget {
  Container buildCarsList() {
    return Container(
      height: 240.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return buildCarCard(index);
        },
      ),
    );
  }

  Container buildProvidersList() {
    return Container(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return buildProviderCard(index);
        },
      ),
    );
  }

  Container buildProviderCard(int index) {
    return Container(
      width: 140.0,
      padding: const EdgeInsets.all(15.0),
      margin: index == 0
          ? EdgeInsets.symmetric(horizontal: 13.0).copyWith(left: 0)
          : EdgeInsets.symmetric(horizontal: 13.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(2, 2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SvgPicture.asset(IconsPath.hertz),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                'Hertz',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.w600,
                ),
                overflow: TextOverflow.ellipsis,
              ),
              Text(
                '60 автомобилей',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xFFA1A1A1),
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          )
        ],
      ),
    );
  }

  Container buildCarCard(int index) {
    return Container(
      margin: index == 0
          ? EdgeInsets.all(10.0).copyWith(left: 0)
          : EdgeInsets.all(10.0),
      width: 200.0,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade300,
            offset: Offset(2, 2),
            blurRadius: 5.0,
          ),
        ],
      ),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.fromLTRB(
              15.0,
              25.0,
              15.0,
              30.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 80.0,
                      child: Text(
                        'Toyota',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF070B16),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: 80.0,
                      child: Text(
                        'Camri Y8',
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                          fontSize: 12.0,
                          fontWeight: FontWeight.w600,
                          color: Color(0xFF070B16),
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      '450 000 сум',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: Color(0xFF616161),
                      ),
                    ),
                    const SizedBox(
                      height: 5.0,
                    ),
                    Text(
                      '/ день',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Color(0xFF616161),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: Image(
              width: 150.0,
              height: 70.0,
              image: AssetImage(ImagePath.car),
              fit: BoxFit.contain,
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: BouncingScrollPhysics(),
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: <Widget>[
            SearchInput(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  AppStrings.cars,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    color: ColorPalette.categoryTitle,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
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
            const SizedBox(height: 25.0),
            buildCarsList(),
            const SizedBox(height: 40.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  AppStrings.providers,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 22.0,
                    color: ColorPalette.categoryTitle,
                  ),
                ),
                GestureDetector(
                  onTap: () {},
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
            const SizedBox(height: 20.0),
            buildProvidersList(),
            const SizedBox(height: 30.0),
          ],
        ),
      ),
    );
  }
}
