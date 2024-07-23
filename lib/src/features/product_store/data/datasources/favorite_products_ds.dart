import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_favorite_products_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/dtos/products_dto.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';

class FavoriteProductsDataSource implements IFavoriteProductsDataSource {
  @override
  Future<List<ProductEntity>> getFavoriteProducts() {
    throw UnimplementedError();
  }

  @override
  Future<void> saveFavoriteProduct(ProductsDTO product) {
    throw UnimplementedError();
  }
}
