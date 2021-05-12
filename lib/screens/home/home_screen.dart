import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/screens.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final _scaffoldKey = GlobalKey<ScaffoldState>();
  int currentTabIndex = 1;

  final List<String> _barItems = [
    IconsPath.tabSearch,
    IconsPath.tabCar,
    IconsPath.tabNote,
  ];

  final List<Widget> _tabsScreens = [
    SearchTabScreen(),
    CarsTabItem(),
    AllCarsTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: getAppBarWithDrawer(_scaffoldKey),
      body: _tabsScreens[currentTabIndex],
      bottomNavigationBar: SizedBox(
        height: 70.0,
        child: BottomNavigationBar(
          elevation: 20.0,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          currentIndex: currentTabIndex,
          onTap: (int index) {
            setState(() {
              currentTabIndex = index;
            });
          },
          items: List.generate(
            _barItems.length,
            (index) => BottomNavigationBarItem(
              icon: SvgPicture.asset(
                _barItems[index],
                color: currentTabIndex == index
                    ? ColorPalette.mainColor
                    : Colors.grey,
              ),
              label: '',
            ),
          ),
        ),
      ),
      drawer: CustomDrawer(),
    );
  }
}
