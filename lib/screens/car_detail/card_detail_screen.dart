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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: getAppBarWithBackAndTitle(context, 'Toyota Camri Y8'),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: Stack(
          children: [
            Column(
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
              ],
            ),
            DraggableScrollableSheet(
              initialChildSize: 0.3,
              minChildSize: 0.3,
              maxChildSize: 0.9,
              builder: (context, scrollController) {
                return Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15.0),
                      topRight: Radius.circular(15.0),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Container(
                        width: double.infinity,
                        child: SingleChildScrollView(
                          controller: scrollController,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
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
                      Positioned(
                        top: 30,
                        child: Container(
                          width: size.width,
                          child: Center(
                            child: Container(
                              width: 100.0,
                              height: 2.0,
                              color: Colors.grey[300],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
