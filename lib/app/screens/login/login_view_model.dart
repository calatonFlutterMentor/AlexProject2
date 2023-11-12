import 'package:calaton_second_project/app/common/base_change_notifier.dart';

import '../../../data/repository/abstract_user.dart';

class LoginViewModel extends BaseChangeNotifier {
  final IUserRepository _userRepository;

  LoginViewModel({required IUserRepository userRepository})
      : _userRepository = userRepository;

  Future<void> onLogInButtonPressed(String email, String password) async {
    startLoading();
    await _userRepository.singIn(email, password);
    stopLoading();
    await Future.delayed(const Duration(seconds: 2));
  }
}
