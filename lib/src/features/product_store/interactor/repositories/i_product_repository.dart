import '../dtos/products_dto.dart';
import '../entities/product_entity.dart';

abstract class IProductsRepository {
  Future<List<ProductEntity>> getProducts();
  Future<List<ProductEntity>> getFavoriteProducts();
  Future<void> saveFavoriteProducts({required ProductsDTO products});
  Future<double> getDiscount({String productId = ''});
}
