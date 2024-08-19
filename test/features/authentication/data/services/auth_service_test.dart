import 'package:ca_flutter_test/src/core/core_module.dart';
import 'package:ca_flutter_test/src/features/authentication/data/services/auth_service.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/entities/auth_state_entity.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/create_account_uc.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/delete_account_uc.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/login_uc.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/update_auth_state_uc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'auth_service_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<CreateAccountUseCase>(),
  MockSpec<DeleteAccountUseCase>(),
  MockSpec<LoginUseCase>(),
  MockSpec<UpdateAuthStateUseCase>(),
])
void main() {
  final mockLoginUseCase = MockLoginUseCase();
  final mockCreateAccountUseCase = MockCreateAccountUseCase();
  final mockDeleteAccountUseCase = MockDeleteAccountUseCase();
  final mockUpdateAuthStateUseCase = MockUpdateAuthStateUseCase();

  late AuthService authService;
  final AuthStateEntity stateEntity = AuthStateEntity.initial();

  setUp(() {
    authService = AuthService(
      state: stateEntity,
      loginUseCase: mockLoginUseCase,
      createAccountUseCase: mockCreateAccountUseCase,
      deleteAccountUseCase: mockDeleteAccountUseCase,
      updateAuthStateUseCase: mockUpdateAuthStateUseCase,
    );

    Modular.bindModule(CoreModule());
  });

  group('Auth Service - Test Group', () {
    test(
      'should call the CreateAccountUseCase use case',
      () async {
        // Arrange
        when(mockCreateAccountUseCase.call()).thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await authService.createAccount();

        // Assert
        verify(mockCreateAccountUseCase.call());
        verifyNoMoreInteractions(mockCreateAccountUseCase);
      },
    );
    test(
      'should call the DeleteAccountUseCase use case',
      () async {
        // Arrange
        when(mockDeleteAccountUseCase.call()).thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await authService.deleteAccount();

        // Assert
        verify(mockDeleteAccountUseCase.call());
        verifyNoMoreInteractions(mockDeleteAccountUseCase);
      },
    );
    test(
      'should call the LoginUseCase use case',
      () async {
        // Arrange
        when(mockLoginUseCase.call(params: stateEntity)).thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await authService.login();

        // Assert
        verify(mockLoginUseCase.call(params: stateEntity));
        verifyNoMoreInteractions(mockLoginUseCase);
      },
    );
    test(
      'should call the UpdateAuthStateUseCase use case',
      () async {
        // Arrange
        when(mockUpdateAuthStateUseCase.call(params: stateEntity)).thenAnswer(
          (realInvocation) async => null,
        );

        // Act
        await authService.updateAuthState(newStateEntity: stateEntity);

        // Assert
        verify(mockUpdateAuthStateUseCase.call(params: stateEntity));
        verifyNoMoreInteractions(mockUpdateAuthStateUseCase);
      },
    );
  });
}
