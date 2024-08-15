import '../entities/onboarding_page_contents_dto.dart';

abstract class IOnboardingDatasource {
  List<OnboardingPageContentsDTO> getDefaultContents();
}
