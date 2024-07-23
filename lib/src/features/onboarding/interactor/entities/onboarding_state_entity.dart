// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';

class OnboardingStateEntity {
  final Atom<int> currentPageAtom;
  final Atom<bool> isLoadingAtom;
  final Atom<bool> displayLeftArrowAtom;
  final Atom<bool> displaySkipButtonAtom;
  final Atom<bool> displayEnterButtonAtom;
  final Atom<List<OnboardingPageContentsDTO>> onboardingContentAtom;
  final Atom<bool> scrollEndedAtom;

  OnboardingStateEntity({
    required this.currentPageAtom,
    required this.isLoadingAtom,
    required this.displayLeftArrowAtom,
    required this.displaySkipButtonAtom,
    required this.displayEnterButtonAtom,
    required this.onboardingContentAtom,
    required this.scrollEndedAtom,
  });

  OnboardingStateEntity.initial()
      : this(
          currentPageAtom: atom(
            0,
            pipes: [throttleTime(const Duration(milliseconds: 350))],
          ),
          isLoadingAtom: atom(false),
          displayLeftArrowAtom: atom(false),
          displaySkipButtonAtom: atom(false),
          displayEnterButtonAtom: atom(false),
          onboardingContentAtom: atom([]),
          scrollEndedAtom: atom(true),
        );
}
