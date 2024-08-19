import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../entities/product_entity.dart';
import '../repositories/i_product_repository.dart';

class UpdateFavoriteProductsUseCase
    implements IUseCases<void, List<ProductEntity>> {
  final IProductsRepository _repository;

  UpdateFavoriteProductsUseCase({required IProductsRepository repository})
      : _repository = repository;

  @override
  Future call({required List<ProductEntity> params}) {
    throw UnimplementedError();
  }
}