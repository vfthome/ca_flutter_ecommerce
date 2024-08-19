import '../../interactor/entities/auth_state_entity.dart';
import '../../interactor/services/i_auth_service.dart';
import '../../interactor/usecases/create_account_uc.dart';
import '../../interactor/usecases/delete_account_uc.dart';
import '../../interactor/usecases/login_uc.dart';
import '../../interactor/usecases/update_auth_state_uc.dart';

class AuthService implements IAuthService {
  final LoginUseCase loginUseCase;
  final CreateAccountUseCase createAccountUseCase;
  final DeleteAccountUseCase deleteAccountUseCase;
  final UpdateAuthStateUseCase updateAuthStateUseCase;

  final AuthStateEntity _state;

  AuthService({
    required this.loginUseCase,
    required this.createAccountUseCase,
    required this.deleteAccountUseCase,
    required this.updateAuthStateUseCase,
    required AuthStateEntity state,
  }) : _state = state;

  @override
  AuthStateEntity get state => _state;

  @override
  Future<void> createAccount() async {
    createAccountUseCase.call();
  }

  @override
  Future<void> deleteAccount() async {
    deleteAccountUseCase.call();
  }

  @override
  Future<void> login() async {
    loginUseCase.call(params: state);
  }

  @override
  Future<void> updateAuthState({
    required AuthStateEntity newStateEntity,
  }) async {
    updateAuthStateUseCase.call(params: newStateEntity);
  }
}
