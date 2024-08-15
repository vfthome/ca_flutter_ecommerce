// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:ca_flutter_test/src/features/product_store/interactor/entities/product_entity.dart';
import 'package:equatable/equatable.dart';

class ProductsDTO extends Equatable {
  final List<ProductEntity> products;

  const ProductsDTO({required this.products});

  factory ProductsDTO.fromJson(String apiResponse) {
    final List<ProductEntity> products = <ProductEntity>[];
    final responseList =
        (json.decode(apiResponse) as List).cast<Map<String, dynamic>>();
    for (final product in responseList) {
      products.add(ProductEntity.fromMap(product));
    }
    return ProductsDTO(products: products);
  }

  Map<String, dynamic> toJson() {
    final List<Map<String, dynamic>> products = <Map<String, dynamic>>[];
    for (final product in this.products) {
      products.add(product.toMap());
    }
    return <String, dynamic>{
      'products': products,
    };
  }

  @override
  List<Object> get props => [products];
}
