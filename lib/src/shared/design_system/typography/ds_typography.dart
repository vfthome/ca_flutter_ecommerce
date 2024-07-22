import 'package:ca_flutter_test/src/shared/design_system/colors/ds_colors.dart';
import 'package:ca_flutter_test/src/shared/design_system/config/fonts.gen.dart';
import 'package:flutter/material.dart';

class DesignSystemTypography {
  /// Font style: Onboarding Title
  final TextStyle onboardingTitle = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.1,
    color: DesingSystemColors().primary,
  );

  /// Font style: Onboarding Body
  final TextStyle onboardingBody = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().light,
  );

  /// Font style: Default Title
  final TextStyle defaultTitle = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.1,
    color: DesingSystemColors().light,
  );

  /// Font style: Name
  final TextStyle name = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().light,
  );
}
