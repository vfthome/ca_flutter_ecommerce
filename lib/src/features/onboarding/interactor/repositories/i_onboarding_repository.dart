import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';

abstract class IOnboardingRepository {
  List<OnboardingPageContentsDTO> getDefaultPageContents();
}
