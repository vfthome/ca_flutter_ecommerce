import 'package:ca_flutter_test/src/features/product_store/interactor/dtos/products_dto.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';

abstract class IFavoriteProductsDataSource {
  /// Get favorite products from local storage.
  ///
  /// Throws a [CacheException] if the data retrieve fails.
  Future<List<ProductEntity>> getFavoriteProducts();

  /// Save favorite products in local storage.
  ///
  /// Throws a [CacheException] if the data save fails.
  Future<void> saveFavoriteProduct(ProductsDTO product);
}
