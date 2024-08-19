import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/internet/interactor/services/i_http_client_service.dart';
import '../../interactor/datasources/i_create_account_ds.dart';

class CreateAccountDataSource implements ICreateAccountDataSource {
  @override
  Future<int> createAccount({
    required String email,
    required String password,
  }) async {
    final httpResponse = await Modular.get<IHttpClientService>().post(
      url: 'https://fakestoreapi.com/users',
      body: {
        'email': email,
        'username': 'testUser',
        'password': password,
      },
    );

    debugPrint('httpResponse: $httpResponse');

    final newUserId =
        (Map<String, dynamic>.from(json.decode(httpResponse)))['id'] as int;

    debugPrint('newUserId: $newUserId');

    return newUserId;
  }
}
