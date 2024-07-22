import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/data/datasources/template_local_datasource.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/data/repositories/template_repository.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/data/services/template_controller_service.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/datasources/i_template_local_datasource.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/entities/template_state_entity.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/repositories/i_template_repository.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/interactor/services/i_template_controller_service.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/ui/pages/template_page_a.dart';
import 'package:ca_flutter_test/src/shared/templates/template_module/ui/pages/template_page_b.dart';
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
    i.add<ITemplateLocalDatasource>(TemplateLocalDatasource.new);
    i.add<ITemplateRepository>(TemplateRepository.new);
    i.addSingleton<ITemplateControllerService>(
      () {
        return TemplateControllerService(
          featureRepository: i.get<ITemplateRepository>(),
          initialState: TemplateStateEntity.initial(),
        );
      },
    );
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
        return const TemplatePageA();
      },
    );

    // TEMPLATE ROUTE B
    r.child('/B', child: (context) => const TemplatePageB());
  }
}
