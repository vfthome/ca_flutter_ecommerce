import 'package:flutter_modular/flutter_modular.dart';

import '../features/authentication/authentication_module.dart';
import '../features/onboarding/onboarding_module.dart';
import '../features/product_store/product_store_module.dart';
import '../shared/modules/haptic_feedback/haptic_feedback_module.dart';
import '../shared/modules/internet/internet_module.dart';
import '../routes/routes.dart';
import 'ui/pages/splash_art_page.dart';

class CoreModule extends Module {
  //* --- MODULE IMPORTS ---
  @override
  List<Module> get imports => [
        // HTTP Client
        InternetModule(),
        // Haptic Feedback
        HapticFeedbackModule(),
      ];

  //* --- APPLICATION ROUTES ---
  @override
  void routes(RouteManager r) {
    // Splash art
    r.child(
      '/',
      child: (context) => const SplashArt(),
      transition: TransitionType.fadeIn,
    );

    //* FEATURE ROUTES
    // Onboarding Module
    r.module('${const Routes().onboarding}/', module: OnboardingModule());
    // Authentication Module
    r.module('${const Routes().auth}/', module: AuthenticationModule());
    // Product Store Module
    r.module('${const Routes().productStore}/', module: ProductStoreModule());

    //* SHARED MODULE ROUTES
    // Internet Module
    r.module('${const Routes().internet}/', module: InternetModule());
  }
}
