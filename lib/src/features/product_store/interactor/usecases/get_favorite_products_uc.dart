import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../entities/product_entity.dart';
import '../repositories/i_product_repository.dart';

class GetFavoriteProductsUseCase
    implements IUseCases<List<ProductEntity>, void> {
  final IProductsRepository _repository;

  GetFavoriteProductsUseCase({required IProductsRepository repository})
      : _repository = repository;

  @override
  Future<List<ProductEntity>> call({params}) async {
    return await _repository.getFavoriteProducts();
  }
}
