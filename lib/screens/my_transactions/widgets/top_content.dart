import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';

class TransactionsTopContent extends StatelessWidget {
  const TransactionsTopContent({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: const EdgeInsets.only(top: 30.0, bottom: 35.0),
            child: Text(
              AppStrings.myTransactions,
              style: TextStyles.profileTitle,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Март',
                    style: const TextStyle(
                      fontSize: 15.0,
                      color: ColorPalette.settingsGray,
                    ),
                  ),
                  const SizedBox(height: 5.0),
                  Text(
                    '4 март',
                    style: TextStyles.profileTitle,
                  ),
                ],
              ),
              Flexible(
                child: Text(
                  '10 000 000 сум',
                  style: const TextStyle(
                    fontSize: 26.0,
                    fontWeight: FontWeight.bold,
                    color: ColorPalette.mainColor,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
