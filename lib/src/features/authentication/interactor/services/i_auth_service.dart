import '../../../../core/interactor/services/i_controller_service.dart';
import '../entities/auth_state_entity.dart';

abstract class IAuthService implements IControllerService<AuthStateEntity> {
  // Update view model
  Future<void> updateAuthState({required AuthStateEntity newStateEntity});
  // Delete account
  Future<void> deleteAccount();
  // Create account
  Future<void> createAccount();
  // Login
  Future<void> login();
}
