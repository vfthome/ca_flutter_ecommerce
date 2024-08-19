import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';
import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'onboarding_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<OnboardingDatasource>(),
])
void main() {
  final mockOnboardingDatasource = MockOnboardingDatasource();
  late OnboardingRepository repository;

  final onboardingContents = [
    OnboardingPageContentsDTO(
      id: '1',
      title: 'Praticidade',
      body: 'Maior estoque de produtos\nde todo o Brasil',
      imagePath: ds.assets.image.onboarding1.path,
      pageNumber: 0,
    ),
    OnboardingPageContentsDTO(
      id: '2',
      title: 'Confiança',
      body: 'Satisfação garantida ou\nseu dinheiro de volta',
      imagePath: ds.assets.image.onboarding2.path,
      pageNumber: 1,
    ),
    OnboardingPageContentsDTO(
      id: '3',
      title: 'Agilidade',
      body:
          'Compre os produtos\ne receba sua encomenda\ndentro do prazo sempre',
      imagePath: ds.assets.image.onboarding3.path,
      pageNumber: 2,
    ),
  ];

  setUp(() {
    repository = OnboardingRepository(
      onboardingDatasource: mockOnboardingDatasource,
    );
  });

  group('getDefaultPageContents', () {
    test('should fetch onboarding contents', () {
      // Arrange
      when(mockOnboardingDatasource.getDefaultContents()).thenAnswer(
        (realInvocation) => onboardingContents,
      );

      // Act
      final result = repository.getDefaultPageContents();

      // Assert
      expect(result.runtimeType, List<OnboardingPageContentsDTO>);
      verify(mockOnboardingDatasource.getDefaultContents());
      verifyNoMoreInteractions(mockOnboardingDatasource);
    });

    test('response should be of lenght 3', () {
      // Arrange
      when(mockOnboardingDatasource.getDefaultContents()).thenAnswer(
        (realInvocation) => onboardingContents,
      );

      // Act
      final result = repository.getDefaultPageContents();

      // Assert
      expect(result.length, 3);
    });
  });
}
