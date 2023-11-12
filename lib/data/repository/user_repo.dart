import 'package:calaton_second_project/data/repository/abstract_user.dart';

import '../../app/service/shared_pref_service.dart';
import '../model/user.dart';

class UserRepository implements IUserRepository {
  UserRepository({required UserService prefService})
      : _prefService = prefService;
  final UserService _prefService;

  @override
  Future<void> singIn(String email, String password) {
    return _prefService.put(User(email: email, password: password));
  }
}
