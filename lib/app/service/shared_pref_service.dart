import 'package:shared_preferences/shared_preferences.dart';

class CredentialService {
  CredentialService();

  static const String _emailKey = "email";
  static const String _passwordKey = "email";
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
//TODO окремі put, оновити назву файлу

  Future<void> put(String email, String password) async {
    (await _prefs).setString(_emailKey, email);
    (await _prefs).setString(_passwordKey, password);
  }

  Future<void> removeAll() async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.remove(_emailKey);
    await prefs.remove(_passwordKey);
  }
}
