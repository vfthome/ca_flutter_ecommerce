import '../entities/product_entity.dart';

abstract class IFavoriteProductsDataSource {
  /// Get favorite products from local storage.
  ///
  /// Throws a [CacheException] if the data retrieve fails.
  Future<List<ProductEntity>> getFavoriteProducts();
}
