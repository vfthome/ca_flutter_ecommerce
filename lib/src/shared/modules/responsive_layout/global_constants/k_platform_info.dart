import '../interactor/entities/platform_info.dart';
import 'k_device_size.dart';

/// PLATFORM INFO - Global platform info class instance, gets updated by ResponsiveLayoutWidget.
///
/// This class is used to store the available [Width], [Height] and [PlatformType] of the current device viewport.
var platformInfo = PlatformInfo(
  availableViewportWidth: deviceWidth,
  availableViewportHeight: deviceHeight,
);
