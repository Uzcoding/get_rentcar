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
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: ColorPalette.inputFilled,
          hintStyle: TextStyle(
            color: ColorPalette.inputHint,
            fontSize: 15.0,
          ),
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: const BorderRadius.all(
              const Radius.circular(10.0),
            ),
          ),
        ),
        fontFamily: 'Montserrat',
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          backgroundColor: ColorPalette.scaffoldBackground,
          elevation: 0,
        ),
        primaryColor: ColorPalette.mainColor,
        scaffoldBackgroundColor: ColorPalette.scaffoldBackground,
      ),
      home: ConfirmationScreen(),
    );
  }
}
