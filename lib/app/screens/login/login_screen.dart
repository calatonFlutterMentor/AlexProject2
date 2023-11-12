import 'package:calaton_second_project/app/screens/login/login_view_model.dart';
import 'package:calaton_second_project/app/screens/common_widgets/default_button.dart';
import 'package:calaton_second_project/app/screens/login/widgets/login_input_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key, required this.viewModel});

  final LoginViewModel viewModel;

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 30),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Register below with your details!',
                  style: TextStyle(
                    fontSize: 23,
                    fontWeight: FontWeight.w400,
                  ),
                  textAlign: TextAlign.center,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: LoginInputField(
                    controller: emailController,
                    hintText: "email",
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: LoginInputField(
                    controller: passwordController,
                    hintText: "password",
                  ),
                ),
                DefaultButton(
                  text: "Sing in",
                  onPressedFunction: () {
                    widget.viewModel.onLogInButtonPressed(
                        emailController.text.toString(),
                        passwordController.text.toString());
                 //   Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => HomeScreenFactory.build()));
                  },
                ),
              ]),
        ),
      ),
    );
  }
}
