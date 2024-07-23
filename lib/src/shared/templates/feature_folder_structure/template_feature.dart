import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_modular/flutter_modular.dart';

//* -------------------------------------------------------------------------------
//* ------------------------------ TEMPLATE MODULE --------------------------------
//* -------------------------------------------------------------------------------
class TemplateModule extends Module {
  @override
  //* --- MODULE IMPORTS ---
  List<Module> get imports => [
        // --- CORE MODULE ---
        CoreModule(),

        // --- IMPORTED MODULES ---

        // ...
      ];

  //* --- MODULE ONLY BINDS ---
  @override
  void binds(Injector i) {
    // ...
  }

  //* --- EXPORTED BINDS ---
  @override
  void exportedBinds(Injector i) {
    // ...
  }

  //* --- EXPORTED CLASS INSTANCES (BINDS) ---
  @override
  void routes(RouteManager r) {
    // --- MAIN ROUTE ---
    r.child(
      '/',
      child: (context) {
        return const SizedBox();
      },
    );

    // ...
  }
}
