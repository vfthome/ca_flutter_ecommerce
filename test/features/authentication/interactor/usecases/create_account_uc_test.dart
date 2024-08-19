import 'package:ca_flutter_test/src/features/authentication/authentication_module.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/repositories/i_auth_repository.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/services/i_auth_service.dart';
import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/create_account_uc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'create_account_uc_test.mocks.dart';

@GenerateNiceMocks([
  MockSpec<IAuthRepository>(),
])
void main() {
  Modular.bindModule(AuthenticationModule());
  final mockAuthRepository = MockIAuthRepository();
  late CreateAccountUseCase createAccountUseCase;

  setUp(() {
    createAccountUseCase = CreateAccountUseCase(
      authRepository: mockAuthRepository,
    );
  });

  Modular.bindModule(AuthenticationModule());

  group('Create Account Use Case - Test Group', () {
    test(
      'should call the auth repository create account method',
      () async {
        // Arrange
        when(mockAuthRepository.createAccount(
          email: Modular.get<IAuthService>().state.user.state.email,
          password: Modular.get<IAuthService>().state.password.state,
        )).thenAnswer(
          (realInvocation) async => Future.value(1),
        );

        // Act
        await createAccountUseCase.call();

        // Assert
        verify(mockAuthRepository.createAccount(
          email: Modular.get<IAuthService>().state.user.state.email,
          password: Modular.get<IAuthService>().state.password.state,
        ));
        verifyNoMoreInteractions(mockAuthRepository);
      },
    );
  });
}
