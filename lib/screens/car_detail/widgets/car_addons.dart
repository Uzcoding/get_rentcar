import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/car_detail/widgets/widgets.dart';

class CarAddons extends StatelessWidget {
  const CarAddons({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 92.0,
      child: ListView.separated(
        clipBehavior: Clip.none,
        physics: BouncingScrollPhysics(),
        padding: const EdgeInsets.only(left: 30.0, right: 20.0),
        separatorBuilder: (context, index) => const SizedBox(width: 17.0),
        scrollDirection: Axis.horizontal,
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return CarAddonsCard();
        },
      ),
    );
  }
}
