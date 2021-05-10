import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class SearchTabTitle extends StatelessWidget {
  const SearchTabTitle({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30.0, bottom: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            AppStrings.vehicleSearch,
            style: TextStyles.profileTitle,
          ),
          Text(
            AppStrings.findBugdet,
            style: TextStyle(
              fontSize: 14.0,
              color: ColorPalette.authGrey,
            ),
          ),
        ],
      ),
    );
  }
}
