import 'package:asp/asp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../../../../routes/routes.dart';
import '../repositories/i_auth_repository.dart';
import '../services/i_auth_service.dart';

class DeleteAccountUseCase implements IUseCases {
  final IAuthRepository authRepository;

  DeleteAccountUseCase({required this.authRepository});

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

    // Deletes current account
    await authRepository.deleteAccount(username: 'mor_2314');

    // Ends loading state
    atomAction((set) {
      set(currentState.isLoading, false);
    }).call();

    // Navigate to authentication page
    Modular.to.navigate(const Routes().onboarding);
  }
}
