import 'package:flutter_modular/flutter_modular.dart';

import 'data/services/http_client_service.dart';
import 'data/services/network_status_service.dart';
import 'interactor/services/i_http_client_service.dart';
import 'interactor/services/i_network_status_service.dart';

class HttpClientModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<IHttpClientService>(HttpClientService.new);
    i.add<INetworkStatusService>(NetworkStatusService.new);
  }
}
