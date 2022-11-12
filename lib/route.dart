// ignore: constant_identifier_names

import 'package:login_sf/pages/home_page.dart';
import 'package:login_sf/pages/login_page.dart';
import 'package:login_sf/pages/splash_page.dart';

// ignore: constant_identifier_names
const String SplashRoute = '/splash';
// ignore: constant_identifier_names
const String HomeRoute = '/home';
// ignore: constant_identifier_names
const String LoginRoute = '/login';

final routes = {
  SplashRoute: (context) => const SplashPage(),
  HomeRoute: (context) => HomePage(),
  LoginRoute: (context) => LoginPage(),
};
