import '../entities/onboarding_page_contents_dto.dart';

abstract class IOnboardingRepository {
  List<OnboardingPageContentsDTO> getDefaultPageContents();
}
