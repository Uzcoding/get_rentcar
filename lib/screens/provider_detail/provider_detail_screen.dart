import 'package:flutter/material.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/provider_detail/widgets/widgets.dart';
import 'package:get_rentcar/widgets/widgets.dart';

class ProviderDetailScreen extends StatefulWidget {
  @override
  _ProviderDetailScreenState createState() => _ProviderDetailScreenState();
}

class _ProviderDetailScreenState extends State<ProviderDetailScreen> {
  final List<String> icons = [
    IconsPath.map,
    IconsPath.message,
    IconsPath.clock,
  ];
  final List<Widget> blocks = [
    Location(),
    Comments(),
    ClockBlock(),
  ];

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: getAppBarWithBackAndTitle(context, 'Dream Car'),
      body: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Column(
              children: <Widget>[
                const SizedBox(height: 40.0),
                ProviderDetailBrand(),
                const SizedBox(height: 30.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(
                    icons.length,
                    (index) => GestureDetector(
                      onTap: () {
                        _currentIndex = index;
                        setState(() {});
                      },
                      child: ProviderDetailTabCard(
                        icon: icons[index],
                        isActive: _currentIndex == index,
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30.0),
                blocks[_currentIndex],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
