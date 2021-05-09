import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/car_detail/widgets/widgets.dart';

class CarInfoDetails extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      margin: const EdgeInsets.symmetric(vertical: 25.0).copyWith(top: 10.0),
      child: ListView.separated(
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 25.0),
        scrollDirection: Axis.horizontal,
        itemCount: 3,
        separatorBuilder: (context, index) => const SizedBox(width: 15.0),
        itemBuilder: (context, index) {
          return CarInfoDetailsCard();
        },
      ),
    );
  }
}
