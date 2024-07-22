import 'package:ca_flutter_test/src/shared/modules/logger/data/services/logger_module.dart';
import 'package:ca_flutter_test/src/shared/modules/logger/interactor/services/i_logger_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class LoggerModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<ILoggerService>(LoggerService.new);
  }
}
