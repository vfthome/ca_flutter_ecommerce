import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class FavoriteItemButton extends StatelessWidget {
  const FavoriteItemButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30 * figmaDiagonal),
      child: Container(
        color: ds.colors.primary.withOpacity(0.8),
        width: 70 * figmaWidth,
        height: 40 * figmaHeight,
        child: Stack(
          children: [
            Center(
              child: Padding(
                padding: EdgeInsets.all(
                  8 * figmaDiagonal,
                ),
                child: DisplaySvg(
                  svgPath: ds.assets.svg.heartOutline.path,
                ),
              ),
            ),
            TransparentButton(
              splashColor: ds.colors.heart.withOpacity(0.5),
            ),
          ],
        ),
      ),
    );
  }
}
