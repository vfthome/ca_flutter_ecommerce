import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  // DATASOURCE TEST GROUP
  group('getDefaultContents', () {
    test('should have lenght 3', () {
      // arrange
      final datasource = OnboardingDatasource();

      // act
      final result = datasource.getDefaultContents();

      // assert
      expect(3, result.length);
    });
    test('should return a list of onboarding contents', () {
      // arrange
      final datasource = OnboardingDatasource();

      // act
      final result = datasource.getDefaultContents();

      // assert
      expect(List<OnboardingPageContentsDTO>, result.runtimeType);
    });
  });
}
