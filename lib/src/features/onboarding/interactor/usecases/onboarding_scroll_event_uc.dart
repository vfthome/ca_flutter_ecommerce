import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class OnboardingScrollEventUseCase implements IUseCases<void, int> {
  @override
  Future<void> call({required int params}) async {
    // Gets current state
    final controller = Modular.get<IOnboardingControllerService>();
    final currentPageAtom = controller.state.currentPageAtom;

    // Handles business logic
    final newPage = params;

    if (currentPageAtom.state.toStringAsFixed(0) !=
        newPage.toStringAsFixed(0)) {
      // Updates current state
      atomAction((set) {
        set(currentPageAtom, newPage);
      }).call();

      controller.calculateUIComponents();
    }
  }
}
