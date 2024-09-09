import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';

/// Should be also fetched from API, but for now it's hardcoded
/// current API categories available are: electronics, jewelery, men's clothing, women's clothing
class CategoriesBar extends StatelessWidget {
  const CategoriesBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final categoriesAvailable = [
      "electronics",
      "jewelery",
      "men's clothing",
      "women's clothing"
    ];

    return Padding(
      padding: EdgeInsets.only(top: 15 * figmaHeight),
      child: SizedBox(
        height: 50 * figmaHeight,
        child: ListView.builder(
          itemCount: 4,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return Row(
              children: [
                //* Space between categories
                SizedBox(
                  width: index != 0 ? 0 : 20 * figmaWidth,
                ),

                //* Category
                ClipRRect(
                  borderRadius: BorderRadius.circular(26 * figmaDiagonal),
                  child: Container(
                    height: 40 * figmaHeight,
                    width: 20 * figmaWidth +
                        0.8 *
                            MediaQuery.textScalerOf(context).scale(
                                (ds.typography.countdown.fontSize ?? 0) *
                                    categoriesAvailable[index]
                                        .characters
                                        .length *
                                    0.9),
                    color: ds.colors.lightContainer,
                    child: Stack(
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 10 * figmaWidth,
                          ),
                          child: Center(
                            child: AutoSizeText(
                              categoriesAvailable[index],
                              style: ds.typography.countdown.copyWith(
                                fontSize: 18,
                                color: ds.colors.dark,
                              ),
                            ),
                          ),
                        ),
                        TransparentButton(
                          splashColor: ds.colors.dark.withOpacity(0.1),
                        )
                      ],
                    ),
                  ),
                ),

                //* Space between categories
                SizedBox(
                  width: 20 * figmaWidth,
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
