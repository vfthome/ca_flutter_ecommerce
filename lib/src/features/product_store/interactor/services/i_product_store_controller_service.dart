import 'package:ca_flutter_test/src/core/interactor/services/i_service.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_store_state_entity.dart';

abstract class IProductStoreControllerService
    implements IControllerService<ProductStoreStateEntity> {
  Future<void> updateProductsList();
  Future<void> loadFavoriteProducts();
  Future<void> loadProductDetails(String productId);
}
