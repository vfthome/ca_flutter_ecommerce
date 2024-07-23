import 'package:asp/asp.dart';
import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';

class ProductStoreStateEntity {
  final Atom<List<ProductEntity>> productsAtom;
  final Atom<bool> isLoadingAtom;

  ProductStoreStateEntity({
    required this.productsAtom,
    required this.isLoadingAtom,
  });

  factory ProductStoreStateEntity.initial() {
    return ProductStoreStateEntity(
      productsAtom: atom([]),
      isLoadingAtom: atom(false),
    );
  }
}
