import '../../interactor/datasources/i_create_account_ds.dart';
import '../../interactor/datasources/i_delete_account_ds.dart';
import '../../interactor/datasources/i_login_ds.dart';
import '../../interactor/repositories/i_auth_repository.dart';

class AuthRepository implements IAuthRepository {
  final ILoginDataSource _loginDataSource;
  final ICreateAccountDataSource _createAccountDataSource;
  final IDeleteAccountDataSource _deleteAccountDataSource;

  AuthRepository({
    required ILoginDataSource loginDataSource,
    required ICreateAccountDataSource createAccountDataSource,
    required IDeleteAccountDataSource deleteAccountDataSource,
  })  : _deleteAccountDataSource = deleteAccountDataSource,
        _createAccountDataSource = createAccountDataSource,
        _loginDataSource = loginDataSource;

  @override
  Future<int> createAccount({
    required String email,
    required String password,
  }) async {
    try {
      return await _createAccountDataSource.createAccount(
        email: email,
        password: password,
      );
    } catch (e) {
      return 0;
    }
  }

  @override
  Future<bool> deleteAccount({
    required String username,
  }) async {
    try {
      return await _deleteAccountDataSource.deleteCurrentAccount();
    } catch (e) {
      return false;
    }
  }

  @override
  Future<String> login({
    required String username,
    required String password,
  }) async {
    try {
      return await _loginDataSource.login(
        username: username,
        password: password,
      );
    } catch (e) {
      return e.toString();
    }
  }
}
