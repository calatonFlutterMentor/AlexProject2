import 'package:calaton_second_project/app/common/base_change_notifier.dart';
import 'package:calaton_second_project/domain/user.dart';

import '../../../data/repository/abstract_user.dart';

class HomeViewModel extends BaseChangeNotifier {
  final IUserRepository _userRepository;

  HomeViewModel({required IUserRepository userRepository})
      : _userRepository = userRepository;

  Future<void> onLogOutButtonPressed() async {
    await _userRepository.logOut();
    notifyListeners();
  }

  Future<IUser> getUser() async {
    notifyListeners();
    return await _userRepository.get();
  }
}
