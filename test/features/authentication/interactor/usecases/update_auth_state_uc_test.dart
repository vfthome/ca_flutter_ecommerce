import 'package:ca_flutter_test/src/features/authentication/interactor/usecases/update_auth_state_uc.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late UpdateAuthStateUseCase updateAuthStateUseCase;

  setUp(() {
    updateAuthStateUseCase = UpdateAuthStateUseCase();
  });

  group('Update Auth State Use Case - Test Group', () {
    test(
      'should update the auth state atom with the new state provided',
      () async {
        // arrange
        // act
        // assert
      },
    );
  });
}
