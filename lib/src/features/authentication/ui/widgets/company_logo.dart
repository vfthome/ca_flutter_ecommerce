import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_platform_info.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class CompanyLogo extends StatelessWidget {
  const CompanyLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double keyboardOffset = MediaQuery.of(context).viewInsets.bottom /
        platformInfo.availableViewportHeight;

    return Align(
      alignment: Alignment(0, -0.65 - 0.3 * keyboardOffset),
      child: DisplaySvg(
        height: 95 * figmaHeight,
        width: 296 * figmaWidth,
        svgPath: ds.assets.svg.logo.path,
      ),
    );
  }
}
