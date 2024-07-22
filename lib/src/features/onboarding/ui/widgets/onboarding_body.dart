import 'package:auto_size_text/auto_size_text.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_figma_auto_scale.dart';
import 'package:flutter/material.dart';

class OnboardingBody extends StatelessWidget {
  const OnboardingBody({
    super.key,
    required this.body,
    required this.style,
  });

  final String body;
  final TextStyle style;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 76 * figmaHeight,
      width: 390 * figmaWidth,
      child: Align(
        alignment: Alignment.topCenter,
        child: AutoSizeText(
          body,
          textAlign: TextAlign.center,
          style: style,
        ),
      ),
    );
  }
}
