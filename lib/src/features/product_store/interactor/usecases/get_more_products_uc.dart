import 'package:asp/asp.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../repositories/i_product_repository.dart';
import '../services/i_product_store_service.dart';

class GetMoreProductsUseCase implements IUseCases {
  final IProductsRepository _repository;

  GetMoreProductsUseCase({
    required IProductsRepository repository,
  }) : _repository = repository;

  @override
  Future call({params}) async {
    //* Gets current state
    final productsAtom = Modular.get<IProductStoreService>().state.productsAtom;
    final isLoadingAtom =
        Modular.get<IProductStoreService>().state.isLoadingAtom;

    //* Handles business logic

    // Updates current loading state
    atomAction((set) {
      set(isLoadingAtom, true);
    }).call();

    // New products list
    final newProducts = [...productsAtom.state];

    // Fetches new products
    final response = await _repository.getProducts();
    debugPrint('products: ${response.toString()}');

    // Updates current products state
    for (var element in response) {
      newProducts.add(element);
    }

    atomAction((set) {
      set(productsAtom, newProducts);
    }).call();

    // Updates current loading state
    atomAction((set) {
      set(isLoadingAtom, false);
    }).call();
  }
}
