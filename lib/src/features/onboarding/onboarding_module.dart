import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/onboarding/data/datasources/onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/data/repositories/onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/data/services/onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/datasources/i_onboarding_datasource.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_state_entity.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/repositories/i_onboarding_repository.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/services/i_onboarding_controller_service.dart';
import 'package:ca_flutter_test/src/features/onboarding/ui/pages/onboarding_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

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
