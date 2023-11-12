import 'package:flutter/material.dart';

import '../common_widgets/default_button.dart';
import '../login/login_view_model.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key,});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 20),
                child: (Text('ppppp')),
              ),
              DefaultButton(
                onPressedFunction: () {},
                text: "Log out",
              )
            ],
          ),
        ),
      ),
    );
  }
}
