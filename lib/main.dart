import 'package:flutter/material.dart';
import 'package:flutter_objective_ec/constants/global_variables.dart';
import 'package:flutter_objective_ec/features/auth/screens/auth_screen.dart';
import 'package:flutter_objective_ec/features/register/screens/register.dart';
import 'package:flutter_objective_ec/routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Ecommerce',
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
        ),
        colorScheme: const ColorScheme.light(
          primary: GlobalVariables.secondaryColor,
        ),
        scaffoldBackgroundColor: GlobalVariables.backgroundColor,
      ),
      debugShowCheckedModeBanner: false,
      onGenerateRoute: (settings) => allRoutes(settings),
      home: const  Register(),
    );
  }
}
