import '../../data/adapters/products_adapter.dart';
import '../entities/product_entity.dart';

abstract class IProductsRepository {
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getFavoriteProducts();
  Future<void> saveFavoriteProducts({required ProductsAdapter products});
  Future<double> getDiscount({String productId = ''});
}
