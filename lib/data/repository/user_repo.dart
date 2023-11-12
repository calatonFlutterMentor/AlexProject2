import 'package:calaton_second_project/data/repository/abstract_user.dart';
import 'package:calaton_second_project/domain/user.dart';

import '../../app/service/user_service.dart';
import '../model/user.dart';

class UserRepository implements IUserRepository {
  UserRepository({required UserService prefService})
      : _prefService = prefService;
  final UserService _prefService;

  @override
  Future<void> singIn(String email, String password) {
    return _prefService.put(User(email: email, password: password));
  }

  @override
  Future<void> logOut() {
    return _prefService.remove();
  }

  @override
  Future<IUser> get() {
    return _prefService.get();
  }
}
