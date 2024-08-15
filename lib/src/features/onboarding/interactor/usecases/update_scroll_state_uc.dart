import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../services/i_onboarding_controller_service.dart';

class UpdateScrollStateUseCase implements IUseCases<void, bool> {
  @override
  Future call({required bool params}) async {
    // .
    // Gets current state
    final currentState =
        Modular.get<IOnboardingControllerService>().state.scrollEndedAtom;

    // Updates current state
    atomAction((set) {
      set(currentState, params);
    }).call();
  }
}
