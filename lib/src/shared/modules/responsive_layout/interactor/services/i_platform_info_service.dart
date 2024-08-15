import '../entities/platform_info.dart';
import '../enums/platform_types_enum.dart';

abstract class IPlatformTypeService {
  PlatformTypesEnum calculatePlatformType({
    required double availableWidth,
  });

  PlatformInfo updatePlatformInfo({
    required double availableViewportWidth,
    required double availableViewportHeight,
  });
}
