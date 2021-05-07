import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class ProvidersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return HomeProviderCard(index: index);
        },
      ),
    );
  }
}

class HomeProviderCard extends StatelessWidget {
  const HomeProviderCard({required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
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
}
