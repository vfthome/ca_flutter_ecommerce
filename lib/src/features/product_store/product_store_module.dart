import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/product_store/data/datasources/favorite_products_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/data/datasources/products_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/data/repositories/products_repository.dart';
import 'package:ca_flutter_test/src/features/product_store/data/services/product_store_controller_service.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_favorite_products_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/datasources/i_products_remote_ds.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_store_state_entity.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/repositories/i_product_repository.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/services/i_product_store_controller_service.dart';
import 'package:ca_flutter_test/src/features/product_store/ui/pages/product_store_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
    i.add<IProductsRemoteDataSource>(ProductsRemoteDataSource.new);
    i.add<IFavoriteProductsDataSource>(FavoriteProductsDataSource.new);
    i.add<IProductsRepository>(ProductsRepository.new);
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
