import 'package:flutter_modular/flutter_modular.dart';

import '../../core/core_module.dart';
import 'data/datasources/onboarding_datasource.dart';
import 'data/repositories/onboarding_repository.dart';
import 'data/services/onboarding_controller_service.dart';
import 'interactor/datasources/i_onboarding_datasource.dart';
import 'interactor/entities/onboarding_state_entity.dart';
import 'interactor/repositories/i_onboarding_repository.dart';
import 'interactor/services/i_onboarding_controller_service.dart';
import 'ui/pages/onboarding_page.dart';

//* -------------------------------------------------------------------------------
//* ----------------------------- ONBOARDING MODULE -------------------------------
//* -------------------------------------------------------------------------------
class OnboardingModule extends Module {
  //* --- EXPORTED BINDS ---
  @override
  void exportedBinds(Injector i) {
    // ...
  }

  //* --- MODULE ONLY BINDS ---
  @override
  void binds(Injector i) {
    i.add<IOnboardingDatasource>(OnboardingDatasource.new);
    i.add<IOnboardingRepository>(OnboardingRepository.new);
    i.addSingleton<IOnboardingControllerService>(
      () => OnboardingControllerService(
        featureRepository: i.get<IOnboardingRepository>(),
        initialState: OnboardingStateEntity.initial(),
      ),
    );
  }

  @override
  //* --- MODULE IMPORTS ---
  List<Module> get imports => [
        // --- CORE MODULE ---
        CoreModule(),
      ];

  //* --- EXPORTED CLASS INSTANCES (BINDS) ---
  @override
  void routes(RouteManager r) {
    // --- MAIN ROUTE ---
    r.child('/', child: (context) {
      return const OnboardingPage();
    });
  }
}
