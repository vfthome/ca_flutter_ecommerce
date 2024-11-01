import 'package:asp/asp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../../../../routes/routes.dart';
import '../entities/auth_state_entity.dart';
import '../repositories/i_auth_repository.dart';
import '../services/i_auth_service.dart';

class LoginUseCase implements IUseCases<void, AuthStateEntity> {
  final IAuthRepository authRepository;

  LoginUseCase({required this.authRepository});

  @override
  Future call({required AuthStateEntity params}) async {
    //* Gets current state
    final currentState = Modular.get<IAuthService>().state;
    final email = currentState.user.state.email;
    final password = currentState.password.state;

    // Logs current state variables
    debugPrint('Email: $email');
    debugPrint('Password: $password');

    // Updates current loading state
    atomAction((set) {
      set(currentState.isLoading, true);
    }).call();

    final token = await authRepository.login(
      username: 'mor_2314',
      password: password == 'C0ntaAzul' ? '83r5^_' : password,
    );

    // Ends loading state
    atomAction((set) {
      set(currentState.isLoading, false);
    }).call();

    if (password == 'C0ntaAzul') {
      // Navigate to authentication page
      Modular.to.navigate('${const Routes().productStore}/');
    }
  }
}
