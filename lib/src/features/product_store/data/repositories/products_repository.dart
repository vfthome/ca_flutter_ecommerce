import '../../interactor/datasources/i_discount_remote_ds.dart';
import '../../interactor/datasources/i_favorite_products_ds.dart';
import '../../interactor/datasources/i_products_remote_ds.dart';
import '../adapters/products_adapter.dart';
import '../../interactor/entities/product_entity.dart';
import '../../interactor/repositories/i_product_repository.dart';

class ProductsRepository implements IProductsRepository {
  final IProductsRemoteDataSource remoteProductsDataSource;
  final IFavoriteProductsDataSource favoriteProductsDataSource;
  final IDiscountRemoteDataSource discountRemoteDataSource;

  ProductsRepository({
    required this.remoteProductsDataSource,
    required this.favoriteProductsDataSource,
    required this.discountRemoteDataSource,
  });

  @override
  Future<List<ProductEntity>> getFavoriteProducts() async {
    try {
      return await favoriteProductsDataSource.getFavoriteProducts();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
    try {
      return await remoteProductsDataSource.getProducts();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<void> saveFavoriteProducts({required ProductsAdapter products}) async {
    throw UnimplementedError();
  }

  @override
  Future<double> getDiscount({String productId = ''}) async {
    return await discountRemoteDataSource.getDiscount();
  }
}
