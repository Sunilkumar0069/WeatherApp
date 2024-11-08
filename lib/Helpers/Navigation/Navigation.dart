// ignore_for_file: prefer_const_constructors

import 'package:go_router/go_router.dart';
import 'package:myweather/Pages/HomeScreen/HomeScreen.dart';
import 'package:myweather/Pages/LandingScreen/LandingScreen.dart';

class Pages {
  static String landingScreen = "/";
  static String homeScreen = "/homeScreen";
}

class AppRouter {
  static GoRouter router = GoRouter(routes: [
    GoRoute(
      path: Pages.landingScreen,
      builder: (context, state) {
        return LandingScreen();
      },
    ),
    GoRoute(
      path: Pages.homeScreen,
      builder: (context, state) {
        return HomeScreen();
      },
    ),
  ]);
}
