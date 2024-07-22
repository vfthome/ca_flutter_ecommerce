import 'package:ca_flutter_test/src/core/config/material_app_config.dart';
import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/core/data/services/core_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() async {
  // Core Service - Dependencies Initialization
  await CoreService().init();

  // Application Initialization
  runApp(
    ModularApp(module: CoreModule(), child: const MaterialAppConfig()),
  );
}
