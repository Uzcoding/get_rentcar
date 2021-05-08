import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get_rentcar/config/config.dart';
import 'package:get_rentcar/screens/screens.dart';
import 'package:transition/transition.dart';

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
      home: HomeScreen(),
      initialRoute: '/',
      onGenerateRoute: (settings) {
        switch (settings.name) {
          case Routes.authIntro:
            return Transition(
              child: AuthIntroScreen(),
              transitionEffect: TransitionEffect.SCALE,
              curve: Curves.linear,
            );
          case Routes.signUp:
            return Transition(
              child: SignUpScreen(),
              transitionEffect: TransitionEffect.LEFT_TO_RIGHT,
            );
          case Routes.confirmation:
            return Transition(
              child: ConfirmationScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.home:
            return Transition(
              child: HomeScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.profileSettings:
            return Transition(
              child: ProfileSettingsScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.myReservations:
            return Transition(
              child: MyReservationsScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.myTransactions:
            return Transition(
              child: MyTransactionsScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.profile:
            return Transition(
              child: ProfileScreen(),
              transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
            );
          case Routes.providers:
            return Transition(
              child: ProvidersScreen(),
              transitionEffect: TransitionEffect.FADE,
            );
        }
      },
    );
  }
}
