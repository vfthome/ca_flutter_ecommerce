import 'package:ca_flutter_test/src/shared/modules/responsive_layout/constants/k_device_size.dart';
import 'package:ca_flutter_test/src/shared/modules/responsive_layout/interactor/entities/platform_info.dart';

/// PLATFORM INFO - Global platform info class instance, gets updated by ResponsiveLayoutWidget.
///
/// This class is used to store the available [Width], [Height] and [PlatformType] of the current device viewport.
var platformInfo = PlatformInfo(
  availableViewportWidth: deviceWidth,
  availableViewportHeight: deviceHeight,
);
