import '../../interactor/entities/product_entity.dart';
import '../../interactor/entities/product_store_state_entity.dart';
import '../../interactor/services/i_product_store_service.dart';
import '../../interactor/usecases/get_favorite_products_uc.dart';
import '../../interactor/usecases/get_more_products_uc.dart';

class ProductStoreService implements IProductStoreService {
  final GetMoreProductsUseCase _getMoreProductsUseCase;
  final GetFavoriteProductsUseCase _getFavoriteProductsUseCase;
  final GetMoreProductsUseCase _updateFavoriteProductsUseCase;
  final ProductStoreStateEntity _state;

  ProductStoreService({
    required ProductStoreStateEntity state,
    required GetMoreProductsUseCase getMoreProductsUseCase,
    required GetFavoriteProductsUseCase getFavoriteProductsUseCase,
    required GetMoreProductsUseCase updateFavoriteProductsUseCase,
  })  : _getFavoriteProductsUseCase = getFavoriteProductsUseCase,
        _getMoreProductsUseCase = getMoreProductsUseCase,
        _updateFavoriteProductsUseCase = updateFavoriteProductsUseCase,
        _state = state;

  @override
  ProductStoreStateEntity get state => _state;

  @override
  Future<void> getMoreProducts() async {
    _getMoreProductsUseCase.call();
  }

  @override
  Future<void> getFavoriteProducts() async {
    _getFavoriteProductsUseCase.call();
  }

  @override
  Future<void> updateFavoriteProducts({
    required List<ProductEntity> favoriteProducts,
  }) async {
    _updateFavoriteProductsUseCase.call(params: favoriteProducts);
  }
}
