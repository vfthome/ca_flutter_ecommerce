import 'package:asp/asp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../../../../routes/routes.dart';
import '../repositories/i_auth_repository.dart';
import '../services/i_auth_service.dart';

class CreateAccountUseCase implements IUseCases {
  final IAuthRepository authRepository;

  CreateAccountUseCase({
    required this.authRepository,
  });

  @override
  Future call({params}) async {
    //* Gets current state
    final currentState = Modular.get<IAuthService>().state;
    final email = currentState.user.state.email;
    final password = currentState.password.state;

    //* Handles business logic
    // Updates current loading state
    atomAction((set) {
      set(currentState.isLoading, true);
    }).call();

    // Logs current state variables
    debugPrint('Email: $email');
    debugPrint('Password: $password');

    // Creates account
    final response = await authRepository.createAccount(
      email: email,
      password: password,
    );

    // Ends loading state
    atomAction((set) {
      set(currentState.isLoading, false);
    }).call();

    if (response != 0) {
      // Navigate to authentication page
      Modular.to.navigate(const Routes().auth + const Routes().login);
    }
  }
}
