import 'package:flutter/material.dart';
import 'package:get_rentcar/screens/screens.dart';
import 'package:transition/transition.dart';

abstract class Routes {
  static const String home = '/home';
  static const String authIntro = '/auth-intro';
  static const String signUp = '/sign-up';
  static const String confirmation = '/confirmation';
  static const String profileSettings = '/profile-settings';
  static const String myReservations = '/my-reservations';
  static const String myTransactions = '/my-transactions';
  static const String profile = '/profile';
  static const String providers = '/providers';
  static const String cars = '/cars';
  static const String searchCarsResult = '/search-cars-result';
  static const String carDetail = '/car-detail';
  static const String driverDetail = '/driver-detail';
  static const String paymentDetail = '/payment-detail';
  static const String bookingDetail = '/booking-detail';
  static const String bookingSuccess = '/booking-success';
  static const String bookingFail = '/booking-fail';

  static generateRoute(settings) {
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
      case Routes.cars:
        return Transition(
          child: CarsScreen(),
          transitionEffect: TransitionEffect.FADE,
        );
      case Routes.searchCarsResult:
        return Transition(
          child: SearchCarResultScreen(),
          transitionEffect: TransitionEffect.FADE,
        );
      case Routes.carDetail:
        return Transition(
          child: CarDetailScreen(),
          transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
        );
      case Routes.driverDetail:
        return Transition(
          child: DriverDetailsScreen(),
          transitionEffect: TransitionEffect.SCALE,
        );
      case Routes.paymentDetail:
        return Transition(
          child: PaymentDetailsScreen(),
          transitionEffect: TransitionEffect.SCALE,
        );
      case Routes.bookingDetail:
        return Transition(
          child: BookingDetailsScreen(),
          transitionEffect: TransitionEffect.RIGHT_TO_LEFT,
        );
      case Routes.bookingSuccess:
        return Transition(
          child: BookingSuccessScreen(),
          transitionEffect: TransitionEffect.SCALE,
        );
      case Routes.bookingFail:
        return Transition(
          child: BookingFailScreen(),
          transitionEffect: TransitionEffect.SCALE,
        );
    }
  }
}
