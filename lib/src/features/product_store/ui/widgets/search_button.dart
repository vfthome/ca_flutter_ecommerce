import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
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
                svgPath: ds.assets.svg.search.path,
                color: ds.colors.iconsDark,
                height: 22.86 * figmaHeight,
                width: 24 * figmaWidth,
              ),
            ),
            TransparentButton(
              splashColor: ds.colors.searchButtonIddle.withOpacity(0.1),
              onTap: () {
                // ...
              },
            ),
          ],
        ),
      ),
    );
  }
}
