import 'package:ca_flutter_test/src/shared/modules/responsive_layout/interactor/entities/platform_info.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/interactor/enums/platform_types_enum.dart';

abstract class IPlatformTypeService {
  PlatformTypesEnum calculatePlatformType({
    required double availableWidth,
  });

  PlatformInfo updatePlatformInfo({
    required double availableViewportWidth,
    required double availableViewportHeight,
  });
}
