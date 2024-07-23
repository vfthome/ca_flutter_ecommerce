import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // DATASOURCE TEST GROUP
  group('getDefaultPageContents', () {
    test('should fetch onboarding contents', () {
      // arrange
      final repository = OnboardingRepository(
        onboardingDatasource: OnboardingDatasource(),
      );

      // act
      final result = repository.getDefaultPageContents();

      // assert
      expect(List<OnboardingPageContentsDTO>, result.runtimeType);
    });
    test('should fetch onboarding contents', () {
      // arrange
      final repository = OnboardingRepository(
        onboardingDatasource: OnboardingDatasource(),
      );

      // act
      final result = repository.getDefaultPageContents();

      // assert
      expect(3, result.length);
    });
  });
}
