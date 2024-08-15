import 'package:flutter_modular/flutter_modular.dart';

import '../../core/core_module.dart';
import 'data/datasources/discount_remote_ds.dart';
import 'data/datasources/favorite_products_ds.dart';
import 'data/datasources/products_remote_ds.dart';
import 'data/repositories/products_repository.dart';
import 'data/services/product_store_controller_service.dart';
import 'interactor/datasources/i_discount_remote_ds.dart';
import 'interactor/datasources/i_favorite_products_ds.dart';
import 'interactor/datasources/i_products_remote_ds.dart';
import 'interactor/entities/product_store_state_entity.dart';
import 'interactor/repositories/i_product_repository.dart';
import 'interactor/services/i_product_store_controller_service.dart';
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

    // Controller
    i.addSingleton<IProductStoreControllerService>(
      () => ProductStoreControllerService(
        state: ProductStoreStateEntity.initial(),
        repository: i.get(),
      ),
    );
  }

  //* --- EXPORTED BINDS ---
  @override
  void exportedBinds(Injector i) {
    // ...
  }

  //* --- EXPORTED CLASS INSTANCES (BINDS) ---
  @override
  void routes(RouteManager r) {
    // --- MAIN ROUTE ---
    r.child('/', child: (context) {
      return const ProductStorePage();
    });

    // ...
  }
}
