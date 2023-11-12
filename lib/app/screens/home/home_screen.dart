import 'package:calaton_second_project/app/screens/home/home_view_model.dart';
import 'package:flutter/material.dart';

import '../common_widgets/default_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key, required this.viewModel});

  final HomeViewModel viewModel;

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
              DefaultButton(
                onPressedFunction: () {
                  viewModel.onLogOutButtonPressed();
                },
                text: "Log out",
              )
            ],
          ),
        ),
      ),
    );
  }
}
