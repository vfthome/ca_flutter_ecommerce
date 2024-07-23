import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_products_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/dtos/products_dto.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:ca_flutter_test/src/shared/modules/internet/interactor/services/i_http_client_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ProductsRemoteDataSource implements IProductsRemoteDataSource {
  /// Calls the http://fakestoreapi.com/products?limit=5 endpoint.
  ///
  /// Throw a [ServerException] for all error codes.
  @override
  Future<List<ProductEntity>> getProducts() async {
    final httpResponse = await Modular.get<IHttpClientService>()
        .get(url: 'http://fakestoreapi.com/products?limit=6');

    final List<ProductEntity> products =
        ProductsDTO.fromJson(httpResponse).products;

    return products;
  }
}
