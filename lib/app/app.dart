import 'package:calaton_second_project/app/screens/login/login_factory.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreenFactory.build(),
    );
  }
}
