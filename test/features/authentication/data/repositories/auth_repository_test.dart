import 'package:ca_flutter_test/src/features/authentication/data/datasources/create_account_ds.dart';
import 'package:ca_flutter_test/src/features/authentication/data/datasources/delete_account_ds.dart';
import 'package:ca_flutter_test/src/features/authentication/data/datasources/login_ds.dart';
import 'package:ca_flutter_test/src/features/authentication/data/repositories/auth_repository.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_repository_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CreateAccountDataSource>(),
  MockSpec<DeleteAccountDataSource>(),
  MockSpec<LoginDataSource>(),
])
void main() {
  final mockCreateAccountDataSource = MockCreateAccountDataSource();
  final mockDeleteAccountDataSource = MockDeleteAccountDataSource();
  final mockLoginDataSource = MockLoginDataSource();
  late AuthRepository authRepository;

  const email = 'John@gmail.com';
  const username = 'johnd';
  const password = 'm38rmF\$';

  setUp(() {
    authRepository = AuthRepository(
      loginDataSource: mockLoginDataSource,
      createAccountDataSource: mockCreateAccountDataSource,
      deleteAccountDataSource: mockDeleteAccountDataSource,
    );
  });

  group('Authentication Repository - Test Group', () {
    test(
      'should call the CreateAccountDataSource data source',
      () async {
        // Arrange
        when(mockCreateAccountDataSource.createAccount(
          email: email,
          password: password,
        )).thenAnswer(
          (realInvocation) async => 11,
        );

        // Act
        await authRepository.createAccount(
          email: email,
          password: password,
        );

        // Assert
        verify(mockCreateAccountDataSource.createAccount(
          email: email,
          password: password,
        ));
        verifyNoMoreInteractions(mockCreateAccountDataSource);
      },
    );
    test(
      'should call the DeleteAccountDataSource data source',
      () async {
        // Arrange
        when(mockDeleteAccountDataSource.deleteCurrentAccount()).thenAnswer(
          (realInvocation) async => true,
        );

        // Act
        await authRepository.deleteAccount(username: '');

        // Assert
        verify(mockDeleteAccountDataSource.deleteCurrentAccount());
        verifyNoMoreInteractions(mockDeleteAccountDataSource);
      },
    );
    test(
      'should call the LoginDataSource data source',
      () async {
        // Arrange
        when(mockLoginDataSource.login(
          username: username,
          password: password,
        )).thenAnswer(
          (realInvocation) async => 'authTokenHere',
        );

        // Act
        await authRepository.login(
          username: username,
          password: password,
        );

        // Assert
        verify(mockLoginDataSource.login(
          username: username,
          password: password,
        ));
        verifyNoMoreInteractions(mockLoginDataSource);
      },
    );
  });
}
