import 'package:flutter_modular/flutter_modular.dart';

import 'data/services/http_client_service.dart';
import 'data/services/internet_status_service.dart';
import 'interactor/services/i_http_client_service.dart';
import 'interactor/services/i_internet_status_service.dart';
import 'ui/pages/offline_error_page.dart';

class InternetModule extends Module {
  //* --- MODULE ONLY BINDS ---
  @override
  void binds(Injector i) {
    // ...
  }

  //* --- EXPORTED BINDS ---
  @override
  void exportedBinds(Injector i) {
    i.add<IHttpClientService>(HttpClientService.new);
    i.add<IInternetStatusService>(InternetStatusService.new);
  }

  //* --- ROUTES ---
  @override
  void routes(RouteManager r) {
    // --- MAIN ROUTE ---
    r.child(
      '/',
      child: (context) {
        return const OfflineErrorPage();
      },
      transition: TransitionType.fadeIn,
    );
  }
}
