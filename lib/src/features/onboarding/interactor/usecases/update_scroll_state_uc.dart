import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
