import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:ca_flutter_test/src/shared/widgets/buttons/transparent_button.dart';
import 'package:ca_flutter_test/src/shared/widgets/display_media/display_svg/display_svg.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../core/routes/routes.dart';

class FavoritesButton extends StatelessWidget {
  const FavoritesButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular((26.85 * figmaWidth) / 2),
      child: SizedBox(
        height: 2 * 26.85 * figmaWidth,
        width: 2 * 26.85 * figmaWidth,
        child: Stack(
          children: [
            Center(
              child: DisplaySvg(
                svgPath: ds.assets.svg.heartOutline.path,
                height: 23 * figmaHeight,
                width: 26.85 * figmaWidth,
              ),
            ),
            TransparentButton(
              splashColor: ds.colors.heart.withOpacity(0.1),
              onTap: () {
                // Navigate to authentication page
                Modular.to.navigate(
                  const Routes().productStore + const Routes().favoriteProducts,
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
