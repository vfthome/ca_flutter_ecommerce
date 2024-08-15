import 'package:http/http.dart' as http;
import 'package:http/http.dart';

import '../../interactor/services/i_http_client_service.dart';

class HttpClientService implements IHttpClientService {
  final client = http.Client();

  @override
  Future get({required String url}) async {
    //* Create uri
    final Uri uri = Uri.parse(url);

    //* Makes the HTTP GET request
    try {
      final Response response = await client.get(uri);

      return response.body;
    } catch (e) {
      //
    }
  }

  @override
  Future delete({required String url}) {
    // todo: implement delete
    throw UnimplementedError();
  }

  @override
  Future post({required String url, required body}) {
    // todo: implement post
    throw UnimplementedError();
  }

  @override
  Future put({required String url, required body}) {
    // todo: implement put
    throw UnimplementedError();
  }
}
