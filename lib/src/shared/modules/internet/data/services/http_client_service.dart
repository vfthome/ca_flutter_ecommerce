// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:ca_flutter_test/src/shared/modules/internet/interactor/errors/offline_error.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../../../../core/routes/routes.dart';
import '../../interactor/errors/request_error.dart';
import '../../interactor/services/i_http_client_service.dart';
import '../../interactor/services/i_internet_status_service.dart';

class HttpClientService implements IHttpClientService {
  final client = http.Client();
  final IInternetStatusService networkStatusService;

  HttpClientService({
    required this.networkStatusService,
  });

  //* GET
  @override
  Future get({required String url}) async {
    // Check if the device is connected to the internet
    final bool isConnected = await networkStatusService.getInternetStatus();

    if (!isConnected) {
      // Overlay popup message
      Modular.to.pushNamed(const Routes().internet);
      throw OfflineError(message: 'No internet connection');
    }

    // Create uri
    final Uri uri = Uri.parse(url);

    // Makes the HTTP GET request
    try {
      final Response response = await client.get(uri);

      return response.body;
    } catch (e) {
      throw RequestError(message: 'Request error: ${e.toString()}');
    }
  }

  //* DELETE
  @override
  Future delete({required String url}) async {
    // Check if the device is connected to the internet
    final bool isConnected = await networkStatusService.getInternetStatus();

    if (!isConnected) {
      // Overlay popup message
      Modular.to.pushNamed(const Routes().internet);
      throw OfflineError(message: 'No internet connection');
    }

    // Create uri
    final Uri uri = Uri.parse(url);

    // Makes the HTTP DELETE request
    try {
      final Response response = await client.delete(uri);

      return response.body;
    } catch (e) {
      throw RequestError(message: 'Request error: ${e.toString()}');
    }
  }

  //* POST
  @override
  Future post({required String url, required Map<String, dynamic> body}) async {
    // Check if the device is connected to the internet
    final bool isConnected = await networkStatusService.getInternetStatus();

    if (!isConnected) {
      // Overlay popup message
      Modular.to.pushNamed(const Routes().internet);
      throw OfflineError(message: 'No internet connection');
    }

    // Create uri
    final Uri uri = Uri.parse(url);

    // Makes the HTTP POST request
    try {
      final Response response = await http.post(
        uri,
        body: body,
      );

      return response.body;
    } catch (e) {
      throw RequestError(message: 'Request error: ${e.toString()}');
    }
  }

  //* PUT
  @override
  Future put({required String url, required body}) async {
    // Check if the device is connected to the internet
    final bool isConnected = await networkStatusService.getInternetStatus();

    if (!isConnected) {
      throw OfflineError(message: 'No internet connection');
    }

    //todo - make the HTTP PUT request
    throw UnimplementedError();
  }
}
