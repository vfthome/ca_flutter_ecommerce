import 'package:flutter/material.dart';

import '../../design_system/design_system.dart';
import '../../modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../modules/responsive_layout/constants/k_safe_area.dart';
import '../display_media/display_svg/display_svg.dart';
import 'transparent_button.dart';

class ReturnButton extends StatelessWidget {
  const ReturnButton({
    super.key,
    this.onTap,
    this.darkMode = false,
    this.splashColor,
  });

  final Function? onTap;
  final bool darkMode;
  final Color? splashColor;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: safeArea.top,
      left: 15 * figmaWidth,
      child: SizedBox(
        height: 70 * figmaHeight,
        width: 70 * figmaWidth,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(20 * figmaHeight),
          child: Stack(
            children: [
              //* Return button icon
              Center(
                child: DisplaySvg(
                  svgPath: ds.assets.svg.returnArrow.path,
                  height: 35 * figmaHeight,
                  width: 20 * figmaWidth,
                  color: darkMode ? ds.colors.iconsDark : ds.colors.light,
                ),
              ),

              //* Transparent button
              TransparentButton(
                onTap: () {
                  if (onTap != null) {
                    onTap!();
                  }
                },
                splashColor: splashColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
