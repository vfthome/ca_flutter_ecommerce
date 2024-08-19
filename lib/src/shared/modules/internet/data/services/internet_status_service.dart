import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../interactor/services/i_internet_status_service.dart';

class InternetStatusService implements IInternetStatusService {
  @override
  Future<bool> getInternetStatus() async {
    return await InternetConnectionChecker().hasConnection;
  }
}
