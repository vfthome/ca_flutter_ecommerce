import '../../interactor/datasources/i_favorite_products_ds.dart';
import '../../interactor/entities/product_entity.dart';

class FavoriteProductsDataSource implements IFavoriteProductsDataSource {
  @override
  Future<List<ProductEntity>> getFavoriteProducts() {
    throw UnimplementedError();
  }
}
