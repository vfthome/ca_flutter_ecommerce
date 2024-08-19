import 'package:ca_flutter_test/src/features/product_store/data/services/product_store_service.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_store_state_entity.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/usecases/get_favorite_products_uc.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/usecases/get_more_products_uc.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/usecases/update_favorite_products_uc.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_store_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<GetMoreProductsUseCase>(),
  MockSpec<GetFavoriteProductsUseCase>(),
  MockSpec<UpdateFavoriteProductsUseCase>(),
])
void main() {
  final mockGetFavoriteProductsUseCase = MockGetFavoriteProductsUseCase();
  final mockGetMoreProductsUseCase = MockGetMoreProductsUseCase();
  final mockUpdateFavoriteProductsUseCase = MockUpdateFavoriteProductsUseCase();

  late ProductStoreService productStoreService;
  final ProductStoreStateEntity stateEntity = ProductStoreStateEntity.initial();

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

  setUp(() {
    productStoreService = ProductStoreService(
      getMoreProductsUseCase: mockGetMoreProductsUseCase,
      getFavoriteProductsUseCase: mockGetFavoriteProductsUseCase,
      updateFavoriteProductsUseCase: mockGetMoreProductsUseCase,
      state: stateEntity,
    );
  });

  group('Product Store Service - Test Group', () {
    test(
      'should call UpdateProductsListUseCase use case',
      () async {
        // Arrange
        when(mockGetMoreProductsUseCase.call()).thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await productStoreService.getMoreProducts();

        // Assert
        verify(mockGetMoreProductsUseCase.call());
        verifyNoMoreInteractions(mockGetMoreProductsUseCase);
      },
    );
    test(
      'should call UpdateFavoriteProductsUseCase use case',
      () async {
        // Arrange
        when(mockGetFavoriteProductsUseCase.call()).thenAnswer(
          (realInvocation) async => products,
        );

        // Act
        await productStoreService.getFavoriteProducts();

        // Assert
        verify(mockGetFavoriteProductsUseCase.call());
        verifyNoMoreInteractions(mockGetFavoriteProductsUseCase);
      },
    );
    test(
      'should call GetFavoriteProductsUseCase use case',
      () async {
        // Arrange
        when(mockUpdateFavoriteProductsUseCase.call(params: products))
            .thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await productStoreService.updateFavoriteProducts(
          favoriteProducts: products,
        );

        // Assert
        verify(mockGetMoreProductsUseCase.call(params: products));
        verifyNoMoreInteractions(mockGetMoreProductsUseCase);
      },
    );
  });
}
