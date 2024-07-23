import 'package:ca_flutter_test/src/core/interactor/error/server_exception.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/dtos/products_dto.dart';
import 'package:ca_flutter_test/src/shared/modules/internet/interactor/services/i_network_status_service.dart';

import '../../interactor/datasources/i_favorite_products_ds.dart';
import '../../interactor/datasources/i_products_remote_ds.dart';
import '../../interactor/entities/product_entity.dart';
import '../../interactor/repositories/i_product_repository.dart';

class ProductsRepository implements IProductsRepository {
  final IProductsRemoteDataSource remoteProductsDataSource;
  final IFavoriteProductsDataSource favoriteProductsDataSource;
  final INetworkStatusService networkStatusService;

  ProductsRepository({
    required this.remoteProductsDataSource,
    required this.favoriteProductsDataSource,
    required this.networkStatusService,
  });

  @override
  Future<List<ProductEntity>> getFavoriteProducts() async {
    return await favoriteProductsDataSource.getFavoriteProducts();
  }

  @override
  Future<List<ProductEntity>> getProducts() async {
    final isConnected = await networkStatusService.getInternetStatus();

    if (isConnected) {
      return await remoteProductsDataSource.getProducts();
    } else {
      throw ServerException();
    }
  }

  @override
  Future<void> saveFavoriteProducts({required ProductsDTO products}) async {
    await favoriteProductsDataSource.saveFavoriteProduct(products);
  }
}
