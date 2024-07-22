abstract class IHttpClientService {
  Future<dynamic> get({required String url});
  Future<dynamic> post({required String url, required dynamic body});
  Future<dynamic> put({required String url, required dynamic body});
  Future<dynamic> delete({required String url});
}
