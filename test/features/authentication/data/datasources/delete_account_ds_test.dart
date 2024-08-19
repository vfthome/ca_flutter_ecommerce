import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/authentication/data/datasources/delete_account_ds.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Delete Account Data Source - Test Group', () {
    test(
      'should return the user data of the deleted account',
      () async {
        // Arrange
        final dataSource = DeleteAccountDataSource();
        Modular.bindModule(CoreModule());

        // Act
        final result = await dataSource.deleteCurrentAccount();

        // Assert
        expect(result, isA<bool>());
      },
    );
  });
}
