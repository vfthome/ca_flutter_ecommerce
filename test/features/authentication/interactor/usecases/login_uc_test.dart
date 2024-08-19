import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/login_uc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'create_account_uc_test.mocks.dart';

void main() {
  final mockAuthRepository = MockIAuthRepository();
  late LoginUseCase loginUseCase;

  setUp(() {
    loginUseCase = LoginUseCase(
      authRepository: mockAuthRepository,
    );
  });

  group('Login Use Case - Test Group', () {
    test(
      'should call the auth repository login method',
      () async {
        // arrange
        // act
        // assert
      },
    );
  });
}
