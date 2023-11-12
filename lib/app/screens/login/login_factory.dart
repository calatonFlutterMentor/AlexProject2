import 'package:calaton_second_project/app/screens/login/login_view_model.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/repository/user_repo.dart';
import '../../service/shared_pref_service.dart';
import 'login_screen.dart';

class LoginScreenFactory {
  static Widget build() {
    return ChangeNotifierProvider<LoginViewModel>(
      create: (context) => LoginViewModel(
          userRepository: UserRepository(prefService: UserService())),
      child: Consumer<LoginViewModel>(
        builder: (context, model, child) => LoginScreen(viewModel: model),
      ),
    );
  }
}
