import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class ContaAzulLogo extends StatelessWidget {
  const ContaAzulLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplaySvg(
      width: 223.94 * figmaWidth,
      height: 72.8 * figmaHeight,
      svgPath: ds.assets.svg.logo.path,
    );
  }
}
