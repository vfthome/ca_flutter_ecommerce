import 'package:flutter_modular/flutter_modular.dart';

import '../../core/core_module.dart';
import '../../core/routes/routes.dart';
import 'data/datasources/discount_remote_ds.dart';
import 'data/datasources/favorite_products_ds.dart';
import 'data/datasources/products_remote_ds.dart';
import 'data/repositories/products_repository.dart';
import 'data/services/product_store_service.dart';
import 'interactor/datasources/i_discount_remote_ds.dart';
import 'interactor/datasources/i_favorite_products_ds.dart';
import 'interactor/datasources/i_products_remote_ds.dart';
import 'interactor/entities/product_store_state_entity.dart';
import 'interactor/repositories/i_product_repository.dart';
import 'interactor/services/i_product_store_service.dart';
import 'interactor/usecases/get_favorite_products_uc.dart';
import 'interactor/usecases/get_more_products_uc.dart';
import 'interactor/usecases/update_favorite_products_uc.dart';
import 'ui/pages/favorites_products_page.dart';
import 'ui/pages/product_description_page.dart';
import 'ui/pages/product_store_page.dart';

//* -------------------------------------------------------------------------------
//* ------------------------- PRODUCT STORE MODULE --------------------------------
//* -------------------------------------------------------------------------------
class ProductStoreModule extends Module {
  @override
  //* --- MODULE IMPORTS ---
  List<Module> get imports => [
        // --- CORE MODULE ---
        CoreModule(),
      ];

  //* --- MODULE ONLY BINDS ---
  @override
  void binds(Injector i) {
    // Data Sources
    i.add<IProductsRemoteDataSource>(ProductsRemoteDataSource.new);
    i.add<IFavoriteProductsDataSource>(FavoriteProductsDataSource.new);
    i.add<IDiscountRemoteDataSource>(DiscountRemoteDataSource.new);

    // Repositories
    i.add<IProductsRepository>(ProductsRepository.new);

    // Use Cases
    i.add(GetMoreProductsUseCase.new);
    i.add(GetFavoriteProductsUseCase.new);
    i.add(UpdateFavoriteProductsUseCase.new);

    // Controller
    i.addSingleton<IProductStoreService>(
      () => ProductStoreService(
        state: ProductStoreStateEntity.initial(),
        getMoreProductsUseCase: i.get(),
        getFavoriteProductsUseCase: i.get(),
        updateFavoriteProductsUseCase: i.get(),
      ),
    );
  }

  //* --- EXPORTED BINDS ---
  @override
  void exportedBinds(Injector i) {
    // ...
  }

  //* --- ROUTES ---
  @override
  void routes(RouteManager r) {
    // --- MAIN ROUTE ---
    r.child('/', child: (context) {
      return const ProductStorePage();
    });

    // --- PRODUCT DESCRIPTION ---
    r.child(
      const Routes().productDescription,
      child: (context) {
        return const ProductDescriptionPage();
      },
      transition: TransitionType.fadeIn,
    );

    // --- FAVORITE PRODUCTS ---
    r.child(
      const Routes().favoriteProducts,
      child: (context) {
        return const FavoritesProductsPage();
      },
      transition: TransitionType.fadeIn,
    );
  }
}
