import '../../../../core/interactor/services/i_controller_service.dart';
import '../entities/onboarding_state_entity.dart';

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
