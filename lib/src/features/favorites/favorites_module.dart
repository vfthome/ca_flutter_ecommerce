import 'package:ca_flutter_test/src/core/ui/pages/error_404_page.dart';
import 'package:ca_flutter_test/src/features/favorites/ui/pages/favorites_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

class FavoritesModule extends Module {
  @override
  void routes(RouteManager r) {
    // Favorites Page
    r.child('/', child: (context) => const FavoritesPage());

    // ...

    // Wildcard Route - Error 404
    r.wildcard(
      child: (context) => const Error404Page(),
      transition: TransitionType.fadeIn,
    );
  }
}
