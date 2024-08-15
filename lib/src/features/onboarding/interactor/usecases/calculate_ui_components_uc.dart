import 'package:asp/asp.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../services/i_onboarding_controller_service.dart';

class CalculateUIComponentsUseCase implements IUseCases {
  @override
  Future<void> call({params}) async {
    // Gets current state
    final currentState = Modular.get<IOnboardingControllerService>().state;

    // Handle business logic
    switch (currentState.currentPageAtom.state) {
      case 0:
        // FIRST PAGE STATE
        atomAction((set) {
          set(currentState.displayEnterButtonAtom, false);
          set(currentState.displayLeftArrowAtom, false);
          set(currentState.displaySkipButtonAtom, false);
        }).call();
        break;
      case 1:
        // SECOND PAGE STATE
        atomAction((set) {
          set(currentState.displayEnterButtonAtom, false);
          set(currentState.displayLeftArrowAtom, true);
          set(currentState.displaySkipButtonAtom, true);
        }).call();
        break;
      case 2:
        // LAST PAGE STATE
        atomAction((set) {
          set(currentState.displayEnterButtonAtom, true);
          set(currentState.displayLeftArrowAtom, true);
          set(currentState.displaySkipButtonAtom, true);
        }).call();
        break;
      default:
        // Updates current state
        atomAction((set) {
          set(currentState.displayEnterButtonAtom, false);
          set(currentState.displayLeftArrowAtom, false);
          set(currentState.displaySkipButtonAtom, false);
        }).call();
        break;
    }
  }
}
