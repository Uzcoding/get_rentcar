import 'package:get_rentcar/config/page_routes.dart';
import 'package:get_rentcar/screens/screens.dart';

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
  static const String providerDetail = '/provider-detail';

  static generateRoute(settings) {
    switch (settings.name) {
      case Routes.authIntro:
        return PageRoutes.fadeThrough(
          () => AuthIntroScreen(),
        );
      case Routes.signUp:
        return PageRoutes.fadeThrough(
          () => SignUpScreen(),
        );
      case Routes.confirmation:
        return PageRoutes.sharedAxis(
          () => ConfirmationScreen(),
        );
      case Routes.home:
        return PageRoutes.sharedAxis(
          () => HomeScreen(),
        );
      case Routes.profileSettings:
        return PageRoutes.sharedAxis(
          () => ProfileSettingsScreen(),
        );
      case Routes.myReservations:
        return PageRoutes.sharedAxis(
          () => MyReservationsScreen(),
        );
      case Routes.myTransactions:
        return PageRoutes.sharedAxis(
          () => MyTransactionsScreen(),
        );
      case Routes.profile:
        return PageRoutes.sharedAxis(
          () => ProfileScreen(),
        );
      case Routes.providers:
        return PageRoutes.fadeThrough(
          () => ProvidersScreen(),
        );
      case Routes.cars:
        return PageRoutes.fadeThrough(
          () => CarsScreen(),
        );
      case Routes.searchCarsResult:
        return PageRoutes.fadeThrough(
          () => SearchCarResultScreen(),
        );
      case Routes.carDetail:
        return PageRoutes.sharedAxis(
          () => CarDetailScreen(),
        );
      case Routes.driverDetail:
        return PageRoutes.fadeScale(
          () => DriverDetailsScreen(),
        );
      case Routes.paymentDetail:
        return PageRoutes.fadeScale(
          () => PaymentDetailsScreen(),
        );
      case Routes.bookingDetail:
        return PageRoutes.fadeScale(
          () => BookingDetailsScreen(),
        );
      case Routes.bookingSuccess:
        return PageRoutes.fadeScale(
          () => BookingSuccessScreen(),
        );
      case Routes.bookingFail:
        return PageRoutes.fadeScale(
          () => BookingFailScreen(),
        );
      case Routes.providerDetail:
        return PageRoutes.fadeThrough(
          () => ProviderDetailScreen(),
        );
    }
  }
}
