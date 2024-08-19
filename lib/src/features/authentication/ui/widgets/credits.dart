import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_test/src/shared/design_system/design_system.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:flutter/material.dart';

class Credits extends StatelessWidget {
  const Credits({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: const Alignment(0, 0.5),
      child: SizedBox(
        height: 60 * figmaHeight,
        width: 230 * figmaWidth,
        child: AutoSizeText(
          'Created by Vitor F. Thomé\n19 Aug 2024',
          style: ds.typography.body.copyWith(
            fontWeight: FontWeight.w500,
            color: ds.colors.darkBlue,
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
