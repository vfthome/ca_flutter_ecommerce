import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:flutter/material.dart';

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
