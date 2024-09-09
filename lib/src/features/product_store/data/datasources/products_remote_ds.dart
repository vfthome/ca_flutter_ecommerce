import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/internet/interactor/services/i_http_client_service.dart';
import '../../interactor/datasources/i_products_remote_ds.dart';
import '../adapters/products_adapter.dart';
import '../../interactor/entities/product_entity.dart';

class ProductsRemoteDataSource implements IProductsRemoteDataSource {
  /// Calls the http://fakestoreapi.com/products?limit=5 endpoint.
  ///
  /// Throw a [ServerException] for all error codes.
  @override
  Future<List<ProductEntity>> getProducts() async {
    final httpResponse = await Modular.get<IHttpClientService>()
        .get(url: 'http://fakestoreapi.com/products?limit=6');

    final List<ProductEntity> products =
        ProductsAdapter.fromJson(httpResponse).products;

    return products;
  }
}
