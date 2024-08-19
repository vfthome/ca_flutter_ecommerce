abstract class IHttpClientService {
  //* Get
  Future<dynamic> get({required String url});
  //* Post
  Future<dynamic> post({
    required String url,
    required Map<String, dynamic> body,
  });
  //* Put
  Future<dynamic> put({
    required String url,
    required Map<String, dynamic> body,
  });
  //* Delete
  Future<dynamic> delete({required String url});
}
