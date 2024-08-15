import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../dtos/products_dto.dart';

class SaveFavoriteProductsUseCase implements IUseCases<void, ProductsDTO> {
  @override
  Future call({required ProductsDTO params}) {
    throw UnimplementedError();
  }
}
