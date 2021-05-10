import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/widgets/widgets.dart';

import 'widgets/widgets.dart';

class MyTransactionsScreen extends StatelessWidget {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    double sizeH = MediaQuery.of(context).size.height;
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      drawer: CustomDrawer(),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: SizedBox(
            height: sizeH,
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: <Widget>[
                TransactionsTopContent(),
                const SizedBox(height: 50.0),
                Expanded(
                  child: Container(
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
                          padding:
                              const EdgeInsets.only(top: 30.0, bottom: 35.0),
                          child: Text(
                            AppStrings.transactions,
                            style: TextStyles.transictionsContent,
                          ),
                        ),
                        Expanded(
                          child: ListView.separated(
                            itemCount: 4,
                            physics: BouncingScrollPhysics(),
                            itemBuilder: (context, index) => TransactionInfo(
                              id: 111,
                              date: 'Вчера',
                              price: '600 000',
                            ),
                            separatorBuilder: (context, index) =>
                                const SizedBox(
                              height: 20.0,
                            ),
                          ),
                        ),
                        const SizedBox(height: 100.0),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
