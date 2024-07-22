import 'package:ca_flutter_test/src/shared/design_system/assets/ds_assets.dart';
import 'package:ca_flutter_test/src/shared/design_system/colors/ds_colors.dart';
import 'package:ca_flutter_test/src/shared/design_system/fonts/ds_fonts.dart';
import 'package:ca_flutter_test/src/shared/design_system/spacing/ds_spacing.dart';
import 'package:ca_flutter_test/src/shared/design_system/typography/ds_typography.dart';

final class DesignSystem {
  final assets = DesignSystemAssets();
  final colors = DesingSystemColors();
  final fonts = DesignSystemFontFamily();
  final spacing = DesingSystemSpacing();
  final typography = DesignSystemTypography();
}

// Global instance of the company design system
final ds = DesignSystem();
