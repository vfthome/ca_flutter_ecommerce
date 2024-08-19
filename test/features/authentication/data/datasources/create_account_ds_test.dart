import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/authentication/data/datasources/create_account_ds.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Create Account Data Source - Test Group', () {
    test(
      'should return the id of the created account',
      () async {
        // Arrange
        final dataSource = CreateAccountDataSource();
        Modular.bindModule(CoreModule());

        // Act
        final result = await dataSource.createAccount(
          email: 'contaazul@gmail.com',
          password: 'P4ssword123',
        );

        // Assert
        expect(result, isA<int>());
      },
    );
  });
}
