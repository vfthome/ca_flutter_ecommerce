import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/buttons/transparent_button.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class FavoriteItemButton extends StatefulWidget {
  const FavoriteItemButton({
    super.key,
  });

  @override
  State<FavoriteItemButton> createState() => _FavoriteItemButtonState();
}

class _FavoriteItemButtonState extends State<FavoriteItemButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(30 * figmaDiagonal),
      child: Container(
        color: ds.colors.primary.withOpacity(0.25),
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
                  svgPath: isFavorite
                      ? ds.assets.svg.heartFill.path
                      : ds.assets.svg.heartOutline.path,
                  color: isFavorite ? ds.colors.heart : ds.colors.black,
                ),
              ),
            ),
            TransparentButton(
              splashColor: ds.colors.heart.withOpacity(0.5),
              onTap: () {
                setState(() {
                  isFavorite = !isFavorite;
                });
              },
            ),
          ],
        ),
      ),
    );
  }
}
