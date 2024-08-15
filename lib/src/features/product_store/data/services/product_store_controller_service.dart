import '../../interactor/entities/product_store_state_entity.dart';
import '../../interactor/repositories/i_product_repository.dart';
import '../../interactor/services/i_product_store_controller_service.dart';
import '../../interactor/usecases/update_products_list_uc.dart';

class ProductStoreControllerService implements IProductStoreControllerService {
  final ProductStoreStateEntity _state;
  final IProductsRepository _repository;

  @override
  ProductStoreStateEntity get state => _state;

  ProductStoreControllerService({
    required ProductStoreStateEntity state,
    required IProductsRepository repository,
  })  : _state = state,
        _repository = repository;

  @override
  Future<void> updateProductsList() async {
    UpdateProductsListUseCase(repository: _repository).call();
  }

  @override
  Future<void> loadFavoriteProducts() async {
    throw UnimplementedError();
  }

  @override
  Future<void> loadProductDetails(String productId) async {
    throw UnimplementedError();
  }
}
