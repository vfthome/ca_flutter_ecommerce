import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_event_dto.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_state_entity.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/repositories/i_onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/button_visibility_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/click_enter_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/click_next_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/click_previous_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/click_skip_button_uc.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/use_cases/onboarding_scroll_event_uc.dart';

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
    ClickEnterButtonUseCase().handleEvent();
  }

  //* CLICK LEFT ARROW
  @override
  void clickPreviousButton() {
    // Handle event and update current state.
    ClickPreviousButtonUseCase().handleEvent();
  }

  //* CLICK RIGHT ARROW
  @override
  void clickNextButton() {
    // Handle event and update current state.
    ClickNextButtonUseCase().handleEvent();
  }

  //* CLICK SKIP BUTTON
  @override
  void clickSkipButton() {
    // Handle event and update current state.
    ClickSkipButtonUseCase().handleEvent();
  }

  //* SCROLL EVENT
  @override
  void scrollEvent({required int currentPage}) {
    OnboardingScrollEventUseCase()
        .handleEvent(event: OnboardingEventEntity(currentPage: currentPage));
  }

  //* BUTTON VISIBILITY
  @override
  void buttonVisibility() {
    ButtonVisibilityUseCase().handleEvent();
  }

  //* --- STATE GETTER ---
  @override
  OnboardingStateEntity get state => _state;
}
