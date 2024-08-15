import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/display_media/display_image/display_network_image.dart';
import '../../interactor/entities/product_entity.dart';
import 'favorite_item_button.dart';
import 'sold_out_counter.dart';

class Product extends StatelessWidget {
  const Product({
    super.key,
    required this.productInfo,
  });

  final ProductEntity productInfo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 20 * figmaHeight,
      ),
      child: SizedBox(
        height: 165 * figmaHeight,
        width: 390 * figmaWidth,
        child: Padding(
          padding: EdgeInsets.only(
            left: 15 * figmaWidth,
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              //* Product Image
              DisplayNetworkImage(
                width: 120 * figmaWidth,
                height: 120 * figmaHeight,
                imageURL: productInfo.image,
              ),
              SizedBox(
                width: 20 * figmaWidth,
              ),

              //* Product Info
              Column(
                children: [
                  SizedBox(
                    height: 8 * figmaHeight,
                  ),

                  //* Product name
                  SizedBox(
                    width: 200 * figmaWidth,
                    height: 30 * figmaHeight,
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: AutoSizeText(
                        productInfo.title,
                        style: ds.typography.productName,
                        overflow: TextOverflow.ellipsis,
                        minFontSize:
                            ((ds.typography.productName.fontSize ?? 20) - 3),
                      ),
                    ),
                  ),

                  SizedBox(
                    height: 115 * figmaHeight,
                    width: 210 * figmaWidth,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            //* Product price
                            SizedBox(
                              height: 30 * figmaHeight,
                              width: 130 * figmaWidth,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  '\$${productInfo.price * 1.2}',
                                  style: ds.typography.productPrice,
                                ),
                              ),
                            ),

                            //* Product discount price
                            SizedBox(
                              height: 30 * figmaHeight,
                              width: 130 * figmaWidth,
                              child: Align(
                                alignment: Alignment.centerLeft,
                                child: AutoSizeText(
                                  '\$${productInfo.price * 1}',
                                  style: ds.typography.productDiscountPrice,
                                ),
                              ),
                            ),

                            SizedBox(
                              height: 20 * figmaHeight,
                            ),

                            //* Sold out counter
                            const SoldOutCounter(),
                          ],
                        ),

                        //* Favorite button
                        const FavoriteItemButton(),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
