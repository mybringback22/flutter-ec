import 'package:flutter/material.dart';
import 'package:flutter_objective_ec/features/auth/screens/auth_screen.dart';
import 'package:flutter_objective_ec/features/register/screens/register.dart';

Route<dynamic> allRoutes(RouteSettings settings) {
  switch (settings.name) {
    case AuthScreen.routeName:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const AuthScreen());
    case Register.routeName:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const Register());
  }
  return MaterialPageRoute(builder: (_) => const AuthScreen());
}
