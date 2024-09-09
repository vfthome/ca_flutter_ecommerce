import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_platform_info.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_safe_area.dart';
import '../../../../shared/widgets/display_media/display_image/display_image.dart';

class SignUpIdCard extends StatelessWidget {
  const SignUpIdCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final double keyboardOffset = MediaQuery.of(context).viewInsets.bottom /
        platformInfo.availableViewportHeight;
    final double safeAreaOffset =
        safeArea.top / platformInfo.availableViewportHeight;

    return IgnorePointer(
      ignoring: true,
      child: Align(
        alignment: Alignment(
          0,
          (-1 + safeAreaOffset - keyboardOffset * 0.8),
        ),
        child: DisplayImage(
          imagePath: ds.assets.image.signUpIdCard.path,
          resolution: 2,
          height: 359 * figmaHeight,
          width: 173 * figmaWidth,
        ),
      ),
    );
  }
}
