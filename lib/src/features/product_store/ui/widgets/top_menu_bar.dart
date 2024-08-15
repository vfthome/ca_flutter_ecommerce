import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class TopMenuBar extends StatelessWidget {
  const TopMenuBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(top: 19 * figmaHeight),
      child: Row(
        children: [
          SizedBox(
            width: 25 * figmaWidth,
          ),

          //* Title
          SizedBox(
            width: 173.97 * figmaWidth,
            height: 56 * figmaHeight,
            child: Center(
              child: AutoSizeText(
                'E-commerce',
                style: ds.typography.defaultTitle,
              ),
            ),
          ),

          const Spacer(),

          //* Favorites button
          DisplaySvg(
            svgPath: ds.assets.svg.heartOutline.path,
            height: 23 * figmaHeight,
            width: 26.85 * figmaWidth,
          ),

          SizedBox(
            width: 20 * figmaWidth,
          ),

          //* Search button
          DisplaySvg(
            svgPath: ds.assets.svg.search.path,
            color: ds.colors.iconsDark,
            height: 22.86 * figmaHeight,
            width: 24 * figmaWidth,
          ),

          SizedBox(
            width: 20 * figmaWidth,
          ),

          //* Profile picture
          DisplayImage(
            height: 39 * figmaHeight,
            width: 39 * figmaWidth,
            imagePath: ds.assets.image.profilePicture.path,
          ),

          SizedBox(
            width: 25 * figmaWidth,
          ),
        ],
      ),
    );
  }
}
