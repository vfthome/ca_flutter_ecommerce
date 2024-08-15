import 'package:flutter/material.dart';

import '../colors/ds_colors.dart';
import '../config/fonts.gen.dart';

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
    color: DesingSystemColors().black,
  );

  /// Font style: Countdown
  final TextStyle countdown = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().countdownColor,
  );

  /// Font style: Product Name
  final TextStyle productName = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 26 * 0.05,
    color: DesingSystemColors().dark,
  );

  /// Font style: Product Name
  final TextStyle productPrice = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w900,
    letterSpacing: 26 * 0.0,
    color: DesingSystemColors().heart.withOpacity(0.7),
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.lineThrough,
  );

  /// Font style: Product Name
  final TextStyle productDiscountPrice = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.0,
    height: 26 * 0.05,
    color: DesingSystemColors().dark,
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
