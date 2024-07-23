import 'package:ca_flutter_test/src/features/onboarding/interactor/datasources/i_onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_page_contents_dto.dart';
import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';

class OnboardingDatasource implements IOnboardingDatasource {
  @override
  List<OnboardingPageContentsDTO> getDefaultContents() {
    return [
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
  }
}
