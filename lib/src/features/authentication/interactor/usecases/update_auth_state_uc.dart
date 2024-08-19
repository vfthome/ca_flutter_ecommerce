import 'package:asp/asp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../entities/auth_state_entity.dart';
import '../services/i_auth_service.dart';

class UpdateAuthStateUseCase implements IUseCases<void, AuthStateEntity> {
  @override
  Future call({required AuthStateEntity params}) async {
    //* Gets current state
    final currentState = Modular.get<IAuthService>().state;

    debugPrint('UPDATING STATES!');

    //* Handles business logic
    // Updates current state
    atomAction((set) {
      set(currentState.hasError, params.hasError.state);
    }).call();
    atomAction((set) {
      set(currentState.isLoading, params.isLoading.state);
    }).call();
    atomAction((set) {
      set(currentState.password, params.password.state);
    }).call();
    atomAction((set) {
      set(currentState.user, params.user.state);
    }).call();
  }
}
