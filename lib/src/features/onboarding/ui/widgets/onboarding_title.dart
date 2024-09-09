import 'package:flutter/material.dart';

import '../../../../shared/modules/responsive_layout/global_constants/k_figma_auto_scale.dart';

class OnboardingTitle extends StatelessWidget {
  const OnboardingTitle({
    super.key,
    required this.title,
    required this.style,
  });

  final String title;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76 * figmaHeight,
      width: 390 * figmaWidth,
      child: FittedBox(
        fit: BoxFit.scaleDown,
        child: Text(
          title,
          style: style,
        ),
      ),
    );
  }
}
