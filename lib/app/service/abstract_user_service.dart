import '../../domain/user.dart';

abstract class IUserService {

  Future<void> put(IUser user);

  Future<IUser> get();

  Future<void> remove();

}