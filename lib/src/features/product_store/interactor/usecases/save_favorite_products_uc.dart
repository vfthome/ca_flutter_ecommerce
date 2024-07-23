import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/dtos/products_dto.dart';

class SaveFavoriteProductsUseCase implements IUseCases<void, ProductsDTO> {
  @override
  Future call({required ProductsDTO params}) {
    throw UnimplementedError();
  }
}
