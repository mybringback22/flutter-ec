import 'package:flutter/material.dart';
import 'package:flutter_objective_ec/features/auth/screens/auth_screen.dart';
import 'package:flutter_objective_ec/features/auth/services/auth_service.dart';
import 'package:flutter_objective_ec/shared/widgets/custom_button.dart';
import '../../../constants/global_variables.dart';
import '../../../shared/widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  static const String routeName = '/reg-screen';
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

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
                      "Create your account",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    CustomTextField(
                      controller: _nameController,
                      hintText: "Name",
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
                      buttonText: "Create Account",
                      onTap: () {
                        AuthService authService = AuthService();
                        authService.signup(
                            email: "wafia@gmailtt.com",
                            password: "1234567",
                            name: "Wafia Nasir");
                      },
                    )
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  Navigator.popAndPushNamed(context, AuthScreen.routeName);
                },
                child: const Text(
                  "Already have an account?",
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

  @override
  void dispose() {
    _emailController.dispose();
    _nameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }
}
