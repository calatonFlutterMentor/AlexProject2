import '../../domain/user.dart';

abstract class IUserRepository {
  Future<void> singIn(String email, String password);

  Future<void> logOut();

  Future<IUser> get();
}
