import 'package:ca_flutter_test/src/features/product_store/data/adapters/products_adapter.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../../api/mock_api_response.dart';

void main() {
  // EXPECTED RESPONSE
  const List<ProductEntity> products = [
    ProductEntity(
      id: 1,
      title: 'Product 1',
      description: 'Description 1',
      price: 100.0,
      image: 'https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg',
      category: "men's clothing",
    ),
    ProductEntity(
      id: 2,
      title: 'Product 2',
      description: 'Description 2',
      price: 200.0,
      image:
          'https://fakestoreapi.com/img/71-3HjGNDUL._AC_SY879._SX._UX._SY._UY_.jpg',
      category: "men's clothing",
    ),
  ];

  group('fromJson', () {
    test('should parse the api response corretcly into data classes', () async {
      // arrange
      final String jsonMap =
          mockApi(jsonFileName: 'products_api_response.json');
      // act
      final result = ProductsAdapter.fromJson(jsonMap);
      // assert
      expect(result.products.toString(), products.toString());
    });
  });

  group('toJson', () {
    test('should return a valid Json', () {
      // arrange
      Map expectedString = {};
      List<Map> productsList = [];
      for (final product in products) {
        productsList.add(product.toMap());
      }
      expectedString.addAll({'products': productsList});

      // act
      final result = const ProductsAdapter(products: products).toJson();

      // assert
      expect(result, expectedString);
    });
  });
}
