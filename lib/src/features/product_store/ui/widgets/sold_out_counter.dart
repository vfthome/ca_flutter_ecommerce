import 'dart:math';

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../../../shared/design_system/design_system.dart';
import '../../../../shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';

class SoldOutCounter extends StatelessWidget {
  const SoldOutCounter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final ammountSold = Random().nextInt(100) + 50;

    return ClipRRect(
      borderRadius: BorderRadius.circular(
        15 * figmaDiagonal,
      ),
      child: Container(
        color: ds.colors.soldBarProduct,
        height: 20 * figmaHeight,
        width: 120 * figmaWidth,
        child: Stack(
          children: [
            //* Sold out bar
            ClipRRect(
              borderRadius: BorderRadius.circular(
                15 * figmaDiagonal,
              ),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  color: ds.colors.primary.withOpacity(0.5),
                  height: 20 * figmaHeight,
                  width: 120 * (ammountSold / 150) * figmaWidth,
                ),
              ),
            ),

            //* Sold out number
            Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.all(2 * figmaDiagonal),
                child: AutoSizeText(
                  '$ammountSold vendidos',
                  style: ds.typography.productName,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
