import '../entities/product_entity.dart';

abstract class IProductsRemoteDataSource {
  /// Calls the http://fakestoreapi.com/products endpoint.
  ///
  /// Throw a [ServerException] for all error codes.
  Future<List<ProductEntity>> getProducts();
}
