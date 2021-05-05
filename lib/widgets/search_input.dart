import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get_rentcar/config/config.dart';

class SearchInput extends StatelessWidget {
  const SearchInput({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 30.0,
        bottom: 40.0,
      ),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.shade200,
            blurRadius: 3.0,
          )
        ],
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: '06.03.21 - 09.03.21, Ташкент',
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 12.0,
            vertical: 20.0,
          ),
          suffixIcon: Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: SvgPicture.asset(
              IconsPath.search,
              fit: BoxFit.scaleDown,
            ),
          ),
        ),
      ),
    );
  }
}
