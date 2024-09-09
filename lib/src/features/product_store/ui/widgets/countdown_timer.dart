import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';

class CountdownTimer extends StatelessWidget {
  const CountdownTimer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 10 * figmaHeight,
        right: 28 * figmaWidth,
      ),
      child: Align(
        alignment: AlignmentDirectional.topEnd,
        child: Container(
          height: 35 * figmaHeight,
          width: 119 * figmaWidth,
          decoration: BoxDecoration(
            color: ds.colors.lightContainer,
            borderRadius: BorderRadius.circular(26 * figmaDiagonal),
          ),
          child: Center(
            child: AutoSizeText(
              '2:48:69',
              style: ds.typography.countdown,
            ),
          ),
        ),
      ),
    );
  }
}
