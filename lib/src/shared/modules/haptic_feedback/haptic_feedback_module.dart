import 'package:ca_flutter_test/src/shared/modules/haptic_feedback/data/services/vibrate_haptics_service.dart';
import 'package:ca_flutter_test/src/shared/modules/haptic_feedback/interactor/services/i_haptics_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HapticFeedbackModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<IHapticService>(VibrateHapticsService.new);
  }
}
