import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class SearchCarResultScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0),
            child: Image.asset(
              ImagePath.arrow_back,
            ),
          ),
        ),
        title: Text(
          AppStrings.searchResult,
          style: const TextStyle(
            fontSize: 22.0,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
      ),
      drawer: CustomDrawer(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            height: 47.0,
            margin: const EdgeInsets.symmetric(
              horizontal: 25.0,
              vertical: 20.0,
            ),
            child: TextField(
              decoration: InputDecoration(
                fillColor: Colors.white,
                hintText: 'Toyota Camri Y8',
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
            margin: const EdgeInsets.only(left: 25.0, bottom: 20.0),
            child: Text(
              '47 авто',
              style: TextStyles.transictionsContent,
            ),
          ),
          Expanded(
            child: ListView.separated(
              separatorBuilder: (context, index) =>
                  const SizedBox(height: 20.0),
              physics: BouncingScrollPhysics(),
              padding: const EdgeInsets.symmetric(horizontal: 25.0)
                  .copyWith(bottom: 20.0),
              itemCount: 10,
              itemBuilder: (BuildContext context, int index) {
                return AllCarCard();
              },
            ),
          )
        ],
      ),
    );
  }
}
