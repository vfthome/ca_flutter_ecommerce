import 'package:ca_flutter_test/src/core/routes/routes.dart';
import 'package:ca_flutter_test/src/core/ui/pages/splash_art_page.dart';
import 'package:ca_flutter_test/src/features/auth/authentication_module.dart';
import 'package:ca_flutter_test/src/features/favorites/favorites_module.dart';
import 'package:ca_flutter_test/src/features/home/home_module.dart';
import 'package:ca_flutter_test/src/features/onboarding/onboarding_module.dart';
import 'package:ca_flutter_test/src/shared/modules/haptic_feedback/haptic_feedback_module.dart';
import 'package:ca_flutter_test/src/shared/modules/internet/internet_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

class CoreModule extends Module {
  //* --- MODULE IMPORTS ---
  @override
  List<Module> get imports => [
        // HTTP Client
        HttpClientModule(),
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
    // Authentication Module
    r.module(const Routes().auth, module: AuthModule());
    // Favorites Module
    r.module(const Routes().favorites, module: FavoritesModule());
    // Home Module
    r.module(const Routes().home, module: HomeModule());
    // Onboarding Module
    r.module(const Routes().onboarding, module: OnboardingModule());
  }
}
