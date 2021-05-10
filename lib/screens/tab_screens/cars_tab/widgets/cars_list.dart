import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/tab_screens/cars_tab/widgets/car_card.dart';

class CarsList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 240.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20.0),
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
