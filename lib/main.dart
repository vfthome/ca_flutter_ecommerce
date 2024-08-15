//! ----------------------------------------------------------------------------------------------------------
//? --------------------   📱  F L U T T E R    A P P   D E V E L O P M E N T  📱   ---------------------------
//! ----------------------------------------------------------------------------------------------------------
//?
//?   8b           d8  88888888888  888888888888  88        88    ,ad8888ba,    88b           d88  88888888888
//?   `8b         d8'  88                88       88        88   d8"'    `"8b   888b         d888  88
//?    `8b       d8'   88                88       88        88  d8'        `8b  88`8b       d8'88  88
//?     `8b     d8'    88aaaaa           88       88aaaaaaaa88  88          88  88 `8b     d8' 88  88aaaaa
//?      `8b   d8'     88"""""           88       88""""""""88  88          88  88  `8b   d8'  88  88"""""
//?       `8b d8'      88                88       88        88  Y8,        ,8P  88   `8b d8'   88  88
//?        `888'       88                88       88        88   Y8a.    .a8P   88    `888'    88  88
//?         `8'        88                88       88        88    `"Y8888Y"'    88     `8'     88  88888888888
//?
//?   ____        _       _   _                   ___         _____         _                 _
//?  / ___|  ___ | |_   _| |_(_) ___  _ __  ___  |_ _|_ __   |_   _|__  ___| |__  _ __   ___ | | ___   __ _ _   _
//?  \___ \ / _ \| | | | | __| |/ _ \| '_ \/ __|  | || '_ \    | |/ _ \/ __| '_ \| '_ \ / _ \| |/ _ \ / _` | | | |
//?   ___) | (_) | | |_| | |_| | (_) | | | \__ \  | || | | |   | |  __/ (__| | | | | | | (_) | | (_) | (_| | |_| |
//?  |____/ \___/|_|\__,_|\__|_|\___/|_| |_|___/ |___|_| |_|   |_|\___|\___|_| |_|_| |_|\___/|_|\___/ \__, |\__, |
//?                                                                                                   |___/ |___/
//?
//? -----------------------------------------------------------------------------------------------------
//? -----------------------------------------------------------------------------------------------------
//? Made by: Vitor - Jul 23, 2024.
//* Company: VFTHOME Solutions In Technology LTDA.

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
