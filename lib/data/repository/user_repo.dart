import 'package:calaton_second_project/data/repository/abstract_user.dart';

import '../../app/service/shared_pref_service.dart';
import '../../domain/user.dart';
import '../model/user.dart';

class UserRepository implements IUserRepository {
  UserRepository({required CredentialService prefService})
      : _prefService = prefService;
  final CredentialService _prefService;

  @override
  IUser singIn(String email, String password) {
    _prefService.put(email, password);
    return ;
  }
}
