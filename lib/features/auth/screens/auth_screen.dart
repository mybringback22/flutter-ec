import 'package:flutter/material.dart';
import 'package:flutter_objective_ec/constants/global_variables.dart';
import 'package:flutter_objective_ec/features/register/screens/register.dart';
import 'package:flutter_objective_ec/shared/widgets/custom_text_field.dart';

import '../../../shared/widgets/custom_button.dart';

class AuthScreen extends StatefulWidget {
  static const String routeName = '/auth-screen';
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalVariables.greyBackgroundCOlor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                "Welcome",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Container(
                child: Column(
                  children: [
                    const Text(
                      "Sign In",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: _emailController,
                      hintText: "Email",
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    CustomTextField(
                      controller: _passwordController,
                      hintText: "Password",
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    CustomButton(
                      buttonText: "Sign In",
                      onTap: () {},
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, Register.routeName);
                },
                child: const Text(
                  "Create a new account?",
                  style: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
