import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/widgets.dart';

class MyTransactionsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarOnlyBack(context),
      drawer: CustomDrawer(),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              TransactionsTopContent(),
              const SizedBox(height: 50.0),
              Container(
                width: double.infinity,
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, bottom: 35.0),
                      child: Text(
                        AppStrings.transactions,
                        style: TextStyles.transictionsContent,
                      ),
                    ),
                    Column(
                      children: List.generate(
                        6,
                        (index) => TransactionInfo(
                          id: 111,
                          date: 'Вчера',
                          price: '600 000',
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
