import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/repositories/i_product_repository.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/usecases/get_products_uc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'get_products_uc_test.mocks.dart';

@GenerateNiceMocks([MockSpec<IProductsRepository>()])
void main() {
  // MOCK INSTANCES
  late GetProductsUseCase useCase;
  MockIProductsRepository mockProductRepository = MockIProductsRepository();

  // SET UP
  setUp(() {
    useCase = GetProductsUseCase(repository: mockProductRepository);
  });

  // EXPECTED RESPONSE
  const List<ProductEntity> products = [
    ProductEntity(
      id: 1,
      title: 'Product 1',
      description: 'Description 1',
      price: 100.0,
      image: 'https://via.placeholder.com/150',
      category: '',
    ),
    ProductEntity(
      id: 2,
      title: 'Product 2',
      description: 'Description 2',
      price: 200.0,
      image: 'https://via.placeholder.com/150',
      category: '',
    ),
  ];

  //* TEST USE CASE
  test(
    'should get a list of products from the repository',
    () async {
      // Arrange
      when(mockProductRepository.getProducts()).thenAnswer(
        (_) async => products,
      );

      // Act
      final result = await useCase.call();

      // Assert
      expect(result, products);
      verify(mockProductRepository.getProducts());
      verifyNoMoreInteractions(mockProductRepository);
    },
  );
}
