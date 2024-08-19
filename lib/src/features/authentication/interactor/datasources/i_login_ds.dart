abstract class ILoginDataSource {
  Future<String> login({required String username, required String password});
}
