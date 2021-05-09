import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/car_detail/widgets/widgets.dart';

class CarIncludes extends StatelessWidget {
  const CarIncludes({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30.0),
      child: Column(
        children: [
          Included(title: AppStrings.makingChanges),
          const SizedBox(height: 20.0),
          Included(title: AppStrings.coverageInCaseOfTheft),
          const SizedBox(height: 20.0),
          Included(title: AppStrings.accidentCoverage),
        ],
      ),
    );
  }
}
