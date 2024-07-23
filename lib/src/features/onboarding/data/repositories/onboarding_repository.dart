import 'package:ca_flutter_test/src/features/onboarding/interactor/datasources/i_onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/repositories/i_onboarding_repository.dart';

class OnboardingRepository implements IOnboardingRepository {
  final IOnboardingDatasource _onboardingDatasource;

  OnboardingRepository({
    required IOnboardingDatasource onboardingDatasource,
  }) : _onboardingDatasource = onboardingDatasource;

  @override
  List<OnboardingPageContentsDTO> getDefaultPageContents() {
    return _onboardingDatasource.getDefaultContents();
  }
}
