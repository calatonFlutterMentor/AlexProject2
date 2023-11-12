import '../../domain/user.dart';

abstract class IUserRepository {
  Future<void> singIn(String email, String password);
}
