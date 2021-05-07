import 'package:flutter/material.dart';
import 'package:get_rentcar/widgets/cars-tab/car_card.dart';

class CarsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: BouncingScrollPhysics(),
        itemCount: 5,
        itemBuilder: (BuildContext context, int index) {
          return HomeCarCard(index: index);
        },
      ),
    );
  }
}
