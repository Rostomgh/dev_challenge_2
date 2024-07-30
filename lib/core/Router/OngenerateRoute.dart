import 'package:dev_challenge_2/Logo.dart';
import 'package:dev_challenge_2/core/Router/ErrorRoute.dart';
import 'package:flutter/material.dart';

class AppRoute {
  Route<dynamic> ongenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/Logo':
        return MaterialPageRoute(builder: (context) => const LogoS());
      default:
        return MaterialPageRoute(builder: (context) => const ErrorRoute());
    }
  }
}
