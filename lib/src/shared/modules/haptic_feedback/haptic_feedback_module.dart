import 'package:flutter_modular/flutter_modular.dart';

import 'data/services/vibrate_haptics_service.dart';
import 'interactor/services/i_haptics_service.dart';

class HapticFeedbackModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<IHapticService>(VibrateHapticsService.new);
  }
}
