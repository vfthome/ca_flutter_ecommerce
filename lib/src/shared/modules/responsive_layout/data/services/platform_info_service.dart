import '../../config/figma_config.dart';
import '../../interactor/entities/platform_info.dart';
import '../../interactor/enums/platform_types_enum.dart';
import '../../interactor/services/i_platform_info_service.dart';

class PlatformInfoService implements IPlatformTypeService {
  @override
  PlatformTypesEnum calculatePlatformType({
    required double availableWidth,
  }) {
    // If width < 760: Type = mobile, if width >= 760: Type = tablet, if width >= 1000: Type = desktop
    if (availableWidth < 760) {
      return PlatformTypesEnum.mobile;
    } else if (availableWidth >= 760 && availableWidth < 1000) {
      return PlatformTypesEnum.tablet;
    } else {
      return PlatformTypesEnum.desktop;
    }
  }

  @override
  PlatformInfo updatePlatformInfo({
    required double availableViewportWidth,
    required double availableViewportHeight,
  }) {
    // Calculate platform type based on available width
    final platformType =
        calculatePlatformType(availableWidth: availableViewportWidth);

    // Calculate current figma canvas width and height based on platform type
    double figmaCanvasWidth = 1;
    double figmaCanvasHeight = 1;

    switch (platformType) {
      case PlatformTypesEnum.mobile:
        figmaCanvasWidth = mobileReferenceWidth;
        figmaCanvasHeight = mobileReferenceHeight;
        break;
      case PlatformTypesEnum.tablet:
        figmaCanvasWidth = tabletReferenceHeight;
        figmaCanvasWidth = tabletReferenceHeight;
        break;
      case PlatformTypesEnum.desktop:
        figmaCanvasWidth = desktopReferenceWidth;
        figmaCanvasWidth = desktopReferenceHeight;
        break;
      default:
        figmaCanvasWidth = mobileReferenceWidth;
        figmaCanvasHeight = mobileReferenceHeight;
        break;
    }

    // Return updated platform info
    return PlatformInfo(
      availableViewportWidth: availableViewportWidth,
      availableViewportHeight: availableViewportHeight,
      platformType: platformType,
      figmaWidth: availableViewportWidth / figmaCanvasWidth,
      figmaHeight: availableViewportHeight / figmaCanvasHeight,
    );
  }
}
