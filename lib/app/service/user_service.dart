import 'package:calaton_second_project/data/model/user.dart';
import 'package:calaton_second_project/domain/user.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'abstract_user_service.dart';

class UserService implements IUserService {
  UserService();

  static const String _emailKey = "email";
  static const String _passwordKey = "email";
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();

  @override
  Future<void> put(IUser user) async {
    final prefs = await _prefs;
    return Future.wait([
      prefs.setString(_emailKey, user.email),
      prefs.setString(_passwordKey, user.password),
    ]).then((value) => null);
  }

  @override
  Future<void> remove() async {
    final prefs = await _prefs;
    await prefs.remove(_emailKey);
    await prefs.remove(_passwordKey);
  }

  @override
  Future<IUser> get() async {
    final prefs = await _prefs;
    final email = prefs.getString(_emailKey);
    final password = prefs.getString(_passwordKey);
    assert(email != null && password != null);
    return User(
      email: email!,
      password: password!,
    );
  }
}
