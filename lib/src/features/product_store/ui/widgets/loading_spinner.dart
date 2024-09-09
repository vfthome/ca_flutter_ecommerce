import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';

class LoadingSpinner extends StatelessWidget {
  const LoadingSpinner({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 20 * figmaHeight,
        ),
        child: SizedBox(
          width: 100 * figmaWidth,
          height: 100 * figmaHeight,
          child: CircularProgressIndicator(
            color: ds.colors.primary,
          ),
        ),
      ),
    );
  }
}
