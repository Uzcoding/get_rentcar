import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/car_detail/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class CarDetailScreen extends StatefulWidget {
  @override
  _CarDetailScreenState createState() => _CarDetailScreenState();
}

class _CarDetailScreenState extends State<CarDetailScreen> {
  final PageController pageController = PageController(initialPage: 0);
  int _currentPage = 0;

  Row buildDots() {
    return Row(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        for (int i = 0; i < 4; i++)
          if (i == _currentPage) ...[circleBar(true)] else circleBar(false),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarWithBackAndTitle(context, 'Toyota Camri Y8'),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              SizedBox(
                height: 170.0,
                child: PageView.builder(
                  controller: pageController,
                  onPageChanged: (value) {
                    _currentPage = value;
                    setState(() {});
                  },
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return Image.asset(ImagePath.bigCar);
                  },
                ),
              ),
              buildDots(),
              CarProvider(),
              CarInfoDetails(),
              Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15.0),
                    topRight: Radius.circular(15.0),
                  ),
                ),
                child: Container(
                  width: double.infinity,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Center(
                        child: Container(
                          margin: const EdgeInsets.only(top: 30.0),
                          width: 100.0,
                          height: 2.0,
                          color: Colors.grey[300],
                        ),
                      ),
                      CarCharacteristic(),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ).copyWith(bottom: 20.0),
                        child: Text(
                          AppStrings.addons,
                          style: TextStyles.listTitle,
                        ),
                      ),
                      CarAddons(),
                      const SizedBox(height: 70.0),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 30.0,
                        ).copyWith(bottom: 29.0),
                        child: Text(
                          AppStrings.included,
                          style: TextStyles.listTitle,
                        ),
                      ),
                      CarIncludes(),
                      const SizedBox(height: 50.0),
                      CarBottomButton(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
