import 'package:ca_flutter_test/src/features/home/interactor/datasources/products_ds.dart';

// Reference: https://dummyjson.com/docs/products

/// This class is a implementation of the [IProductsDataSource] interface,
/// using the DummyJSON API as the data source.
class DummyjsonProductDataSource implements IProductsDataSource {
  @override
  Future<Map> getAllCategories() {
    throw UnimplementedError();
  }

  @override
  Future<Map> getAllProducts() {
    throw UnimplementedError();
  }

  @override
  Future<Map> getProductById({required String id}) {
    throw UnimplementedError();
  }

  @override
  Future<Map> getProductsByCategory(
      {required String category, required int pageNumber}) {
    throw UnimplementedError();
  }

  @override
  Future<Map> paginateProducts({required int pageNumber}) {
    throw UnimplementedError();
  }

  @override
  Future<Map> searchProductsByName({required String name}) {
    throw UnimplementedError();
  }

  @override
  Future<Map> sortProducts({required String sortBy, required int pageNumber}) {
    throw UnimplementedError();
  }
}
