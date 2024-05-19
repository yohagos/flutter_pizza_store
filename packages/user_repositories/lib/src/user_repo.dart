abstract class UserRepository {
  Stream<User?> get user;

  Future<User?> signUp(User user, String password);

  Future<void> setUserData(User user);

  Future<void> signIn(String email, String password);

  Future<void> logOut();
}
