import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/internet/interactor/services/i_http_client_service.dart';
import '../../interactor/datasources/i_login_ds.dart';

class LoginDataSource implements ILoginDataSource {
  @override
  Future<String> login(
      {required String username, required String password}) async {
    final httpResponse = await Modular.get<IHttpClientService>().post(
      url: 'https://fakestoreapi.com/auth/login',
      body: {
        "username": username,
        "password": password,
      },
    );

    debugPrint('httpResponse: $httpResponse');

    return (Map<String, dynamic>.from(json.decode(httpResponse)))['token']
        as String;
  }
}
