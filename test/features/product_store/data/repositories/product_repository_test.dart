import 'package:ca_flutter_test/src/features/product_store/data/repositories/products_repository.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_discount_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_favorite_products_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_products_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:ca_flutter_test/src/shared/modules/internet/interactor/services/i_internet_status_service.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'product_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IProductsRemoteDataSource>(),
  MockSpec<IFavoriteProductsDataSource>(),
  MockSpec<IDiscountRemoteDataSource>(),
  MockSpec<IInternetStatusService>(),
])
void main() {
  final mockInternetStatusService = MockIInternetStatusService();
  final mockProductsRemoteDataSource = MockIProductsRemoteDataSource();
  final mockFavoriteProductsDataSource = MockIFavoriteProductsDataSource();
  final mockDiscountRemoteDataSource = MockIDiscountRemoteDataSource();
  late ProductsRepository productRepository;

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
    productRepository = ProductsRepository(
      remoteProductsDataSource: mockProductsRemoteDataSource,
      favoriteProductsDataSource: mockFavoriteProductsDataSource,
      discountRemoteDataSource: mockDiscountRemoteDataSource,
    );
  });

  group('getProducts', () {
    test(
      'should return a ${List<ProductEntity>} when the remote API call is successful',
      () async {
        // Arrange
        when(mockInternetStatusService.getInternetStatus()).thenAnswer(
          (realInvocation) async => true,
        );
        when(mockProductsRemoteDataSource.getProducts()).thenAnswer(
          (realInvocation) async => products,
        );

        // Act
        final result = await productRepository.getProducts();

        // Assert
        expect(result, products);
        verify(mockProductsRemoteDataSource.getProducts());
        verifyNoMoreInteractions(mockProductsRemoteDataSource);
      },
    );

    // test('should check if device is online', () {
    //   // Arrange
    //   when(mockNetworkStatusService.getInternetStatus())
    //       .thenAnswer((_) async => true);
    //   // Act
    //   productRepository.getProducts();
    //   // Assert
    //   verify(mockNetworkStatusService.getInternetStatus());
    // });

    // test('should return a $Exception when the remote API call is unccussesful',
    //     () async {
    //   // Arrange
    //   when(mockNetworkStatusService.getInternetStatus()).thenAnswer(
    //     (realInvocation) async => false,
    //   );

    //   // Act
    //   late Object result;
    //   try {
    //     result = await productRepository.getProducts();
    //   } catch (e) {
    //     result = e;
    //   }

    //   // Assert
    //   expect(result.runtimeType, Exception);
    //   verify(mockNetworkStatusService.getInternetStatus());
    //   verifyNoMoreInteractions(mockProductsRemoteDataSource);
    // });
  });

  // group('getFavoriteProducts', () {
  //   test(
  //       'should return a ${List<ProductEntity>} when the cache retrieve is successful',
  //       () async {
  //     // Arrange
  //     when(mockFavoriteProductsDataSource.getFavoriteProducts()).thenAnswer(
  //       (realInvocation) async => products,
  //     );
  //     when(mockNetworkStatusService.getInternetStatus()).thenAnswer(
  //       (realInvocation) async => false,
  //     );

  //     // Act
  //     final result = await productRepository.getProducts();

  //     // Assert
  //     expect(result, products);
  //     verify(mockFavoriteProductsDataSource.getFavoriteProducts());
  //     verifyNoMoreInteractions(mockFavoriteProductsDataSource);
  //   });

  //   test(
  //       'should return a $CacheException when the cache retrieve is unsuccessful',
  //       () async {
  //     // Arrange
  //     when(mockFavoriteProductsDataSource.getFavoriteProducts()).thenAnswer(
  //       (realInvocation) async => products,
  //     );

  //     // Act
  //     late Object result;
  //     try {
  //       result = await productRepository.getProducts();
  //     } catch (e) {
  //       result = e;
  //     }

  //     // Assert
  //     expect(result.runtimeType, CacheException);
  //     verify(mockFavoriteProductsDataSource.getFavoriteProducts());
  //     verifyNoMoreInteractions(mockFavoriteProductsDataSource);
  //   });
  // });
}
