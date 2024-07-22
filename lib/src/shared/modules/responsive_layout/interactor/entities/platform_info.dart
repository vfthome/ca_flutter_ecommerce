import 'package:ca_flutter_test/src/shared/modules/responsive_layout/interactor/enums/platform_types_enum.dart';

class PlatformInfo {
  final double availableViewportWidth;
  final double availableViewportHeight;
  final double figmaWidth;
  final double figmaHeight;
  final PlatformTypesEnum? platformType;

  PlatformInfo({
    required this.availableViewportWidth,
    required this.availableViewportHeight,
    this.figmaWidth = 1,
    this.figmaHeight = 1,
    this.platformType,
  });
}
