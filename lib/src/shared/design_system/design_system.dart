import 'assets/ds_assets.dart';
import 'colors/ds_colors.dart';
import 'fonts/ds_fonts.dart';
import 'spacing/ds_spacing.dart';
import 'typography/ds_typography.dart';

final class DesignSystem {
  final assets = DesignSystemAssets();
  final colors = DesingSystemColors();
  final fonts = DesignSystemFontFamily();
  final spacing = DesingSystemSpacing();
  final typography = DesignSystemTypography();
}

// Global instance of the company design system
final ds = DesignSystem();
