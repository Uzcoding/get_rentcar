import 'package:flutter/material.dart';

import 'provider_card.dart';

class ProvidersList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140.0,
      child: ListView.builder(
        padding: const EdgeInsets.only(left: 20.0),
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
