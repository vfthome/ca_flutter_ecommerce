import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:ca_flutter_test/src/shared/widgets/display_media/display_svg/display_svg.dart';
import 'package:flutter/material.dart';

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
