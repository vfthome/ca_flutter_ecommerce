import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/delete_account_uc.dart';
import 'package:flutter_test/flutter_test.dart';

import 'create_account_uc_test.mocks.dart';

void main() {
  final mockAuthRepository = MockIAuthRepository();
  late DeleteAccountUseCase deleteAccountUseCase;

  setUp(() {
    deleteAccountUseCase = DeleteAccountUseCase(
      authRepository: mockAuthRepository,
    );
  });

  group('Delete Account Use Case - Test Group', () {
    test(
      'should call the auth repository delete account method',
      () async {
        // arrange
        // act
        // assert
      },
    );
  });
}
