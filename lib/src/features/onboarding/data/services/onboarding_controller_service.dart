import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_state_entity.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/repositories/i_onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/calculate_ui_components_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/click_enter_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/click_next_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/click_previous_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/click_skip_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/onboarding_scroll_event_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/usecases/update_scroll_state_uc.dart';

class OnboardingControllerService implements IOnboardingControllerService {
  //* --- PROPERTIES ---
  final OnboardingStateEntity _state;
  final IOnboardingRepository _repository;

  //* --- CONSTRUCTOR ---
  OnboardingControllerService({
    required OnboardingStateEntity initialState,
    required IOnboardingRepository featureRepository,
  })  : _state = initialState,
        _repository = featureRepository {
    // Handle event and update current state.
    atomAction((set) {
      set(
        _state.onboardingContentAtom,
        _repository.getDefaultPageContents(),
      );
    }).call();
  }

  //* --- EVENT HANDLERS ---

  //* CLICK ENTER BUTTON
  @override
  void clickEnterButton() {
    // Handle event and update current state.
    ClickEnterButtonUseCase().call();
  }

  //* CLICK LEFT ARROW
  @override
  void clickPreviousButton() {
    // Handle event and update current state.
    ClickPreviousButtonUseCase().call();
  }

  //* CLICK RIGHT ARROW
  @override
  void clickNextButton() {
    // Handle event and update current state.
    ClickNextButtonUseCase().call();
  }

  //* CLICK SKIP BUTTON
  @override
  void clickSkipButton() {
    // Handle event and update current state.
    ClickSkipButtonUseCase().call();
  }

  //* SCROLL EVENT
  @override
  void scrollEvent({required int currentPage}) {
    OnboardingScrollEventUseCase().call(params: currentPage);
  }

  //* BUTTON VISIBILITY
  @override
  void calculateUIComponents() {
    CalculateUIComponentsUseCase().call();
  }

  //* --- STATE GETTER ---
  @override
  OnboardingStateEntity get state => _state;

  @override
  void updateScrollState({required bool params}) {
    UpdateScrollStateUseCase().call(params: params);
  }
}
