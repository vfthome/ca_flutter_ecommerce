abstract class ICreateAccountDataSource {
  Future<int> createAccount({required String email, required String password});
}
