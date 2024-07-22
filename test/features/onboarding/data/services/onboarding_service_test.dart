import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
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
  });
}
