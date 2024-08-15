import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../entities/product_entity.dart';
import '../repositories/i_product_repository.dart';

class GetFavoriteProductsUseCase
    implements IUseCases<List<ProductEntity>, void> {
  final IProductsRepository repository;

  GetFavoriteProductsUseCase({required this.repository});

  @override
  Future<List<ProductEntity>> call({params}) async {
    return await repository.getFavoriteProducts();
  }
}
