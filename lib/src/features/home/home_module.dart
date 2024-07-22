import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/core/ui/pages/error_404_page.dart';
import 'package:ca_flutter_test/src/features/home/ui/pages/home_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HomeModule extends Module {
  //* --- MODULE IMPORTS ---
  @override
  List<Module> get imports => [
        CoreModule(),
      ];

  //* --- FEATURE ROUTES ---
  @override
  void routes(RouteManager r) {
    r.child(
      '/',
      child: (context) => const HomePage(),
      transition: TransitionType.fadeIn,
    );

    // ...

    // Wildcard Route - Error 404
    r.wildcard(
      child: (context) => const Error404Page(),
      transition: TransitionType.fadeIn,
    );
  }
}
