import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';

abstract class IOnboardingDatasource {
  List<OnboardingPageContentsDTO> getDefaultContents();
}
