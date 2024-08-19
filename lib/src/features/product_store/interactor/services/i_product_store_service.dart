import '../../../../core/interactor/services/i_controller_service.dart';
import '../entities/product_entity.dart';
import '../entities/product_store_state_entity.dart';

abstract class IProductStoreService
    implements IControllerService<ProductStoreStateEntity> {
  Future<void> getMoreProducts();
  Future<void> getFavoriteProducts();
  Future<void> updateFavoriteProducts({
    required List<ProductEntity> favoriteProducts,
  });
}
