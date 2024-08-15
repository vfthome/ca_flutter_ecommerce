import '../../../../core/interactor/services/i_service.dart';
import '../entities/product_store_state_entity.dart';

abstract class IProductStoreControllerService
    implements IControllerService<ProductStoreStateEntity> {
  Future<void> updateProductsList();
  Future<void> loadFavoriteProducts();
  Future<void> loadProductDetails(String productId);
}
