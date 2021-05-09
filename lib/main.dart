import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/screens.dart';
import 'package:get_rentcar/widgets/custom_behavior.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: ScrollConfiguration(
        behavior: CustomBehavior(),
        child: HomeScreen(),
      ),
      initialRoute: '/',
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
    );
  }
}
