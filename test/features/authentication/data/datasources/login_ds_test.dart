import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/authentication/data/datasources/login_ds.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Login Use Case - Test Group', () {
    test(
      'should return an authentication token',
      () async {
        // Arrange
        final dataSource = LoginDataSource();
        Modular.bindModule(CoreModule());

        // Act
        final result = await dataSource.login(
          username: 'mor_2314',
          password: '83r5^_',
        );

        // Assert
        expect(result, isA<String>());
      },
    );
    test(
      'should return an error message',
      () async {
        // Arrange
        final dataSource = LoginDataSource();
        Modular.bindModule(CoreModule());

        late final String result;

        // Act
        try {
          result = await dataSource.login(
            username: 'mor_2314',
            password: '8a3r5^_',
          );
        } catch (e) {
          result = e.toString();
        }

        // Assert
        expect(
            result,
            'FormatException: Unexpected character (at character 1)\n'
            'username or password is incorrect\n'
            '^\n'
            '');
      },
    );
  });
}
