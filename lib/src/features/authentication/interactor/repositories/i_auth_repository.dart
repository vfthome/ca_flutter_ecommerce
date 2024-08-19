abstract class IAuthRepository {
  // Delete account
  Future<bool> deleteAccount({
    required String username,
  });
  // Create account
  Future<int> createAccount({
    required String email,
    required String password,
  });
  // Login
  Future<String> login({
    required String username,
    required String password,
  });
}
