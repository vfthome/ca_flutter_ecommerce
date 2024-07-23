import 'package:ca_flutter_test/src/core/interactor/services/i_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_state_entity.dart';

abstract class IOnboardingControllerService
    implements IControllerService<OnboardingStateEntity> {
  void clickPreviousButton();
  void clickNextButton();
  void clickSkipButton();
  void clickEnterButton();
  void scrollEvent({required int currentPage});
  void calculateUIComponents();
  void updateScrollState({required bool params});
}
