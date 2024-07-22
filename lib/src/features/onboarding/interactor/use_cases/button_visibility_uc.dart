import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_event_dto.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ButtonVisibilityUseCase implements IUseCases<OnboardingEventEntity?> {
  @override
  Future<void> handleEvent({OnboardingEventEntity? event}) async {
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
