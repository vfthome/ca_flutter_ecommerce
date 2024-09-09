import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';

class FeaturedProduct extends StatelessWidget {
  const FeaturedProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 20 * figmaHeight),
      child: Align(
        alignment: Alignment.topCenter,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20 * figmaDiagonal),
          child: SizedBox(
            width: 337 * figmaWidth,
            height: 148 * figmaHeight,
            child: Stack(
              children: [
                DisplayImage(
                  imagePath: ds.assets.image.discountProduct.path,
                ),
                TransparentButton(
                  splashColor: ds.colors.filterMenuButtons.withOpacity(0.3),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
