import 'package:ca_flutter_test/src/core/ui/pages/error_404_page.dart';
import 'package:ca_flutter_test/src/features/auth/ui/pages/login_page.dart';
import 'package:ca_flutter_test/src/features/auth/ui/pages/sign_up_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class AuthModule extends Module {
  @override
  void exportedBinds(Injector i) {}

  @override
  void routes(RouteManager r) {
    // Sign Up
    r.child('/', child: (context) => const SignUpPage());

    // Login
    r.child('/login', child: (context) => const LoginPage());

    // Wildcard Route - Error 404
    r.wildcard(
      child: (context) => const Error404Page(),
      transition: TransitionType.fadeIn,
    );
  }
}
