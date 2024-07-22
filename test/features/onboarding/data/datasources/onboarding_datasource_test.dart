import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/dtos/onboarding_page_contents_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // DATASOURCE TEST GROUP
  group('Onboarding Data Source - Tests Group', () {
    test('Should return 3 onboarding page contents', () {
      // arrange
      final datasource = OnboardingDatasource();

      // act
      final result = datasource.getDefaultContents();

      // assert
      expect(3, result.length);
    });

    test('Should return a type of List<OnboardingPageContents>', () {
      // arrange
      final datasource = OnboardingDatasource();

      // act
      final result = datasource.getDefaultContents();

      // assert
      expect(List<OnboardingPageContentsDTO>, result.runtimeType);
    });
  });
}
