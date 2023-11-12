import '../../domain/user.dart';

abstract class IUserRepository {
  IUser singIn(String email, String password);
}
