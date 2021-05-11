import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/screens.dart';

void main() {
  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
    ),
  );
  final app = App();
  runApp(app);
}

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: AppTheme.appTheme,
      home: AuthIntroScreen(),
      initialRoute: '/',
      onGenerateRoute: (settings) => Routes.generateRoute(settings),
    );
  }
}
