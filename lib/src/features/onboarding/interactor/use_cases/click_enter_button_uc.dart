import 'package:ca_flutter_test/src/core/interactor/use_cases/i_use_cases.dart';
import 'package:ca_flutter_test/src/core/routes/routes.dart';
import 'package:ca_flutter_test/src/features/onboarding/interactor/entities/onboarding_event_dto.dart';
import 'package:flutter_modular/flutter_modular.dart';

class ClickEnterButtonUseCase implements IUseCases<OnboardingEventEntity?> {
  @override
  Future<void> handleEvent({OnboardingEventEntity? event}) async {
    Modular.to.navigate(const Routes().home);
  }
}
