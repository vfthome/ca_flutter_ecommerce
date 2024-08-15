import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import '../../../../shared/widgets/display_media/display_svg/display_svg.dart';

class ContaAzulLeafs extends StatelessWidget {
  const ContaAzulLeafs({super.key});

  @override
  Widget build(BuildContext context) {
    return DisplaySvg(
      width: 66 * figmaWidth,
      height: 59 * figmaHeight,
      svgPath: ds.assets.svg.logoLeafs.path,
    );
  }
}
