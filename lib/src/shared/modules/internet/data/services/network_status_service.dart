import '../../interactor/services/i_network_status_service.dart';

class NetworkStatusService implements INetworkStatusService {
  @override
  Future<bool> getInternetStatus() async {
    return true;
  }
}
