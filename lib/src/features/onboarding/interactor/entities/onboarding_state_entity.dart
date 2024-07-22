// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/dtos/onboarding_page_contents_dto.dart';

class OnboardingStateEntity {
  final Atom<int> currentPageAtom;
  final Atom<bool> isLoadingAtom;
  final Atom<bool> displayLeftArrowAtom;
  final Atom<bool> displaySkipButtonAtom;
  final Atom<bool> displayEnterButtonAtom;
  final Atom<List<OnboardingPageContentsDTO>> onboardingContentAtom;

  const OnboardingStateEntity({
    required this.currentPageAtom,
    required this.isLoadingAtom,
    required this.displayLeftArrowAtom,
    required this.displaySkipButtonAtom,
    required this.displayEnterButtonAtom,
    required this.onboardingContentAtom,
  });

  OnboardingStateEntity.initial()
      : this(
          currentPageAtom: atom(0),
          isLoadingAtom: atom(false),
          displayLeftArrowAtom: atom(false),
          displaySkipButtonAtom: atom(false),
          displayEnterButtonAtom: atom(false),
          onboardingContentAtom: atom([]),
        );

  @override
  String toString() {
    return 'OnboardingStateEntity(currentPageAtom: ${currentPageAtom.state}, isLoadingAtom: ${isLoadingAtom.state}, displayLeftArrowAtom: ${displayLeftArrowAtom.state}, displaySkipButtonAtom: ${displaySkipButtonAtom.state}, displayEnterButtonAtom: ${displayEnterButtonAtom.state}, onboardingContentAtom: ${onboardingContentAtom.state})';
  }
}
