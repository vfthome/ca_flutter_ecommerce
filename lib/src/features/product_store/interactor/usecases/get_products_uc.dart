import 'package:flutter/material.dart';

import '../../../../core/interactor/use_cases/i_use_cases.dart';
import '../entities/product_entity.dart';
import '../repositories/i_product_repository.dart';

class GetProductsUseCase implements IUseCases<List<ProductEntity>, void> {
  final IProductsRepository repository;

  GetProductsUseCase({required this.repository});

  @override
  Future<List<ProductEntity>> call({params}) async {
    final productsList = await repository.getProducts();
    debugPrint('products: ${productsList.toString()}');
    return productsList;
  }
}
