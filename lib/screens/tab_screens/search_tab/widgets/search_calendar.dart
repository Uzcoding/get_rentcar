import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/tab_screens/search_tab/widgets/date_info.dart';

class SearchCalendar extends StatelessWidget {
  const SearchCalendar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(15.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: AppTheme.radius,
        boxShadow: AppTheme.shadow,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          SearchDateInfo(
            title: AppStrings.receiving,
            dayNum: '06',
            day: 'Вт',
            month: 'Март',
            time: '10:00',
          ),
          Container(
            height: 130.0,
            width: 1.0,
            color: ColorPalette.black,
          ),
          SearchDateInfo(
            title: AppStrings.refund,
            dayNum: '09',
            day: 'Пт',
            month: 'Март',
            time: '10:00',
          ),
        ],
      ),
    );
  }
}
