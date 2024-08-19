import 'dart:convert';

import 'package:flutter_modular/flutter_modular.dart';

import '../../../../shared/modules/internet/interactor/services/i_http_client_service.dart';
import '../../interactor/datasources/i_delete_account_ds.dart';

class DeleteAccountDataSource implements IDeleteAccountDataSource {
  @override
  Future<bool> deleteCurrentAccount() async {
    final httpResponse = await Modular.get<IHttpClientService>()
        .delete(url: 'https://fakestoreapi.com/users/6');

    final deletedUserId =
        (json.decode(httpResponse) as Map<String, dynamic>)['id'] as int?;

    return deletedUserId != null;
  }
}
