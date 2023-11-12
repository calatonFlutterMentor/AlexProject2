import 'package:calaton_second_project/app/screens/home/home_screen.dart';
import 'package:calaton_second_project/app/screens/home/home_view_model.dart';
import 'package:calaton_second_project/app/screens/login/login_factory.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/repository/user_repo.dart';
import '../../service/user_service.dart';

class HomeScreenFactory {
  static Widget buildHomeScreen() {
    return ChangeNotifierProvider<HomeViewModel>(
      create: (context) => HomeViewModel(
        userRepository: UserRepository(prefService: UserService()),
      ),
      child: Consumer<HomeViewModel>(
        builder: (context, model, child) {
          return FutureBuilder(
            future: model.getUser(),
            builder: (context, snapshot) {
              if (snapshot.hasData) {
                final userEmail = snapshot.data?.email;
                final userPassword = snapshot.data?.password;
                if (userEmail != null && userPassword != null) {
                  return HomeScreen(viewModel: model);
                } else {
                  return LoginScreenFactory.build();
                }
              } else {
                return LoginScreenFactory.build();
              }
            },
          );
        },
      ),
    );
  }
}
