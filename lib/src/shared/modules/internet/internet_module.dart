import 'package:ca_flutter_test/src/shared/modules/internet/data/services/http_client_service.dart';
import 'package:ca_flutter_test/src/shared/modules/internet/interactor/services/i_http_client_service.dart';
import 'package:flutter_modular/flutter_modular.dart';

class HttpClientModule extends Module {
  @override
  void exportedBinds(Injector i) {
    i.add<IHttpClientService>(HttpClientService.new);
  }
}
