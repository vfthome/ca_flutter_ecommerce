import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/product_store/data/datasources/products_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test(
    'should return a ${List<ProductEntity>}',
    () async {
      // Arrange
      final dataSource = ProductsRemoteDataSource();
      Modular.bindModule(CoreModule());

      // Act
      final result = await dataSource.getProducts();

      // Assert
      expect(result, isA<List<ProductEntity>>());
    },
  );
}
