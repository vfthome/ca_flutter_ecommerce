import 'package:flutter/material.dart';

import '../colors/ds_colors.dart';
import '../config/fonts.gen.dart';

class DesignSystemTypography {
  /// Onboarding Title
  final TextStyle onboardingTitle = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 26,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.1,
    color: DesingSystemColors().primary,
  );

  /// Onboarding Body
  final TextStyle onboardingBody = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().light,
  );

  /// Default Title
  final TextStyle defaultTitle = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 24,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.1,
    color: DesingSystemColors().black,
  );

  /// Countdown
  final TextStyle countdown = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().countdownColor,
  );

  /// Product Name / Sold Out Counter
  final TextStyle productName = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    letterSpacing: 26 * 0.05,
    color: DesingSystemColors().dark,
  );

  /// Product price
  final TextStyle productPrice = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w900,
    letterSpacing: 26 * 0.0,
    color: DesingSystemColors().heart.withOpacity(0.7),
    fontStyle: FontStyle.italic,
    decoration: TextDecoration.lineThrough,
  );

  /// Product discount price
  final TextStyle productDiscountPrice = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.0,
    height: 26 * 0.05,
    color: DesingSystemColors().dark,
  );

  /// Hint
  final TextStyle hint = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: Colors.black.withOpacity(0.5),
  );

  /// Body
  final TextStyle body = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w500,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: Colors.black.withOpacity(0.75),
  );

  /// Large button
  final TextStyle largeButton = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 20,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().white,
  );

  /// Small text
  final TextStyle smallText = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 14,
    fontWeight: FontWeight.w300,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().black,
  );

  /// Name here
  final TextStyle name = TextStyle(
    fontFamily: FontFamily.houschkaPro,
    fontSize: 18,
    fontWeight: FontWeight.w600,
    letterSpacing: 26 * 0.05,
    height: 26 * 0.05,
    color: DesingSystemColors().light,
  );
}
